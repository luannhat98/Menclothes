package controller;

import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.*;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("Order")
public class CheckOutController {
    @Autowired
    private ProductSizeColorService productSizeColorService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private OrderDetailsService orderDetailsService;
    @Autowired
    private PromoService promoService;
    @Autowired
    private MailSender mailSender;
    @Autowired
    private ProductService productService;


    @RequestMapping(value = "userCheckOut", method = RequestMethod.GET)
    public String userOrder(ModelMap modelMap, @ModelAttribute Orderr orderr) {
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        order.setAccountId(accountService.getUserByUserName(authentication.getName()));
        order.setShipmentId(orderr.getShipmentId());
        order.setPaymentId(orderr.getPaymentId());

        modelMap.addAttribute("Order", order);

        // save infomation customer
        Customer customer = customerService.getCustomerById(accountService.getUserByUserName(authentication.getName()).getId());
        customer.setEmail(orderr.getAccountId().getCustomer().getEmail());
        customer.setPhone(orderr.getShipmentId().getAddress());
        customer.setName(orderr.getShipmentId().getCustomerName());
        customer.setPhone(orderr.getShipmentId().getPhone());
        customerService.addCustomer(customer);


        if (orderr.getPaymentId().getId() == 1) {
            //set status
            Status status = new Status();
            status.setId(1);
            order.setStatusId(status);
            //set current date
            order.setOrderDate(LocalDate.now());
            //set amount with Promo
            if (orderr.getPromoId().getCode().isEmpty()) {
                order.setAmount(order.getAmount() + order.getAmount() * 5 / 100);
            } else {
                if (promoService.getPromoByCode(orderr.getPromoId().getCode()).getEndDay().isAfter(LocalDate.now()) || promoService.getPromoByCode(orderr.getPromoId().getCode()).getEndDay().isEqual(LocalDate.now())) {
                    order.setAmount((float) (order.getAmount()
                            + order.getAmount() * 5 / 100
                            - order.getAmount() * promoService.getPromoByCode(orderr.getPromoId().getCode()).getDiscount()));
                }
            }
            //mail text
            String text = "MEMBAY SHOPER\n" +
                    "\n" +
                    "Woo hoo! Your order is on its way. Your order details can be found below.\n" +
                    "\n" +
                    "ORDER SUMMARY:\n" +
                    "\n" +
                    "Order Date: " + order.getOrderDate() + "\n" +
                    "Order Total: " + order.getAmount() + "$" + "\n" +
                    "\n" +
                    "SHIPPING ADDRESS: " + order.getShipmentId().getAddress() + "\n" +
                    "\n" +
                    "Thank you for placing your order!";
            // send mail
            sendEmail("menbay.shoper@gmail.com", customerService.getCustomerById(order.getAccountId().getId()).getEmail(), text);
            //save order
            orderService.addOrder(order);
            //save orderDetails
            for (OrderDetails orderDetails : order.getOrderDetailsList()) {
                orderDetailsService.addOrderDetails(orderDetails);

                //change quantity product
                for (ProductSizeColor productSizeColor : orderDetails.getProductId().getProductSizeColorList()) {
                    if (productSizeColor.getQuantity() >= 1) {
                        ProductSizeColor productSizeColorNew = productSizeColorService.getProductSizeById(productSizeColor.getId());
                        productSizeColorNew.setQuantity(productSizeColorNew.getQuantity() - orderDetails.getQuantity());
                        productSizeColorService.addProductSizeColor(productSizeColorNew);
                    }
                }
            }
            //save quantity Product
            saveSumOfQuantityProduct();
            //reset order session
            modelMap.addAttribute("Order", new Orderr());
            return "redirect: userOrder?page=1";
        } else {
            Status status = new Status();
            status.setId(2);
            order.setStatusId(status);
            try {
                PaymentServices paymentServices = new PaymentServices();
                String approvalLink = paymentServices.authorizePayment(order);

                return "redirect:" + approvalLink;

            } catch (PayPalRESTException ex) {
                modelMap.addAttribute("errorMessage", ex.getMessage());
                ex.printStackTrace();
                return "user/error";
            }
        }
    }

    @RequestMapping(value = "executePayment")
    public String reviewPayment(ModelMap modelMap, @RequestParam(name = "paymentId") String paymentId, @RequestParam(name = "PayerID") String payerId) {
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        //set date order
        order.setOrderDate(LocalDate.now());

        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.executePayment(paymentId, payerId);

            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);

            modelMap.addAttribute("payer", payerInfo);
            modelMap.addAttribute("transaction", transaction);

            //Mail text
            String text = "MEMBAY SHOPER\n" +
                    "\n" +
                    "Woo hoo! Your order is on its way. Your order details can be found below.\n" +
                    "\n" +
                    "ORDER SUMMARY:\n" +
                    "\n" +
                    "Order Date: " + order.getOrderDate() + "\n" +
                    "Order Total: " + order.getAmount() + "$" + "\n" +
                    "\n" +
                    "SHIPPING ADDRESS: " + order.getShipmentId().getAddress() + "\n" +
                    "\n" +
                    "Thank you for placing your order!";
            // send mail
            sendEmail("menbay.shoper@gmail.com", customerService.getCustomerById(order.getAccountId().getId()).getEmail(), text);
            // save order
            orderService.addOrder(order);
            //save orderDetails
            for (OrderDetails orderDetails : order.getOrderDetailsList()) {
                orderDetailsService.addOrderDetails(orderDetails);

                //change quantity product
                for (ProductSizeColor productSizeColor : orderDetails.getProductId().getProductSizeColorList()) {
                    if (productSizeColor.getQuantity() >= 1) {
                        ProductSizeColor productSizeColorNew = productSizeColorService.getProductSizeById(productSizeColor.getId());
                        productSizeColorNew.setQuantity(productSizeColorNew.getQuantity() - orderDetails.getQuantity());
                        productSizeColorService.addProductSizeColor(productSizeColorNew);
                    }
                }
            }
            //save quantity Product
            saveSumOfQuantityProduct();
            // reset session
            modelMap.addAttribute("Order", new Orderr());

            return "user/receipt";
        } catch (PayPalRESTException e) {
            e.printStackTrace();
            modelMap.addAttribute("errorMassage", "Could Not Get Payment Detils");
            return "user/error";
        }
    }


    @RequestMapping(value = "userLetCheckOut")
    public String checkOutCart(ModelMap modelMap, Model model) {
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        modelMap.addAttribute("Order", order);
        modelMap.addAttribute("Orderr", new Orderr());
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (accountService.getUserByUserName(authentication.getName()) != null) {
            model.addAttribute("user", accountService.getUserByUserName(authentication.getName()));
            model.addAttribute("role", roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer", customerService.getCustomerById(accountService.getUserByUserName(authentication.getName()).getId()));
        }
        //get new regist user
        model.addAttribute("account", new User());
        return "user/checkOut";
    }

    @RequestMapping(value = "plusItemCheckOut")
    public String plusItem(ModelMap modelMap, @RequestParam(name = "iditem") int id) {
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
        float a = 0;
        for (OrderDetails orderDetails : orderDetailsList) {
            Product product = (Product) orderDetails.getProductId();
            List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
            for (ProductSizeColor productSizeColor2 : productSizeColorList) {
                if (productSizeColor2.getId() == id && orderDetails.getQuantity() <= productSizeColorService.getQuantityByProductSizeColor(productSizeColor2.getProductId().getId(), productSizeColor2.getSizeId().getId(), productSizeColor2.getColorId().getId())) {
                    if (orderDetails.getQuantity() == productSizeColorService.getQuantityByProductSizeColor(productSizeColor2.getProductId().getId(), productSizeColor2.getSizeId().getId(), productSizeColor2.getColorId().getId())) {
                        modelMap.addAttribute("Maximum", "maximum");
                    }
                    orderDetails.setQuantity(orderDetails.getQuantity() + 1);
                    orderDetails.setAmount(orderDetails.getQuantity() * product.getPrice());
                    a += orderDetails.getAmount();
                }
            }
        }
        order.setAmount(a);
        modelMap.addAttribute("Order", order);
        return "redirect: userLetCheckOut";
    }

    @RequestMapping(value = "lessItemCheckOut")
    public String lessItem(ModelMap modelMap, @RequestParam(name = "iditem") int id) {
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
        float a = 0;
        for (OrderDetails orderDetails : orderDetailsList) {
            Product product = (Product) orderDetails.getProductId();
            List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
            for (ProductSizeColor productSizeColor2 : productSizeColorList) {
                if (productSizeColor2.getId() == id && orderDetails.getQuantity() > 1) {
                    orderDetails.setQuantity(orderDetails.getQuantity() - 1);
                    orderDetails.setAmount(orderDetails.getQuantity() * product.getPrice());
                    a += orderDetails.getAmount();
                }
            }
        }
        order.setAmount(a);
        modelMap.addAttribute("Order", order);
        return "redirect: userLetCheckOut";
    }

    @ModelAttribute("Order")
    public Orderr orderCart() {
        return new Orderr();
    }

    //send mail
    public void sendEmail(String from, String to, String text) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject("Congratulations on your successful order!");
        mailMessage.setText(text);

        mailSender.send(mailMessage);
    }

    public void saveSumOfQuantityProduct(){
        for(Product product : productService.getAllProduct()){
            product.setQuantity(productSizeColorService.getQuantityProduct(product.getId()));
            productService.addProduct(product);
        }
    }
}
