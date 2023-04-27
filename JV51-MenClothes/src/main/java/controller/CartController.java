package controller;

import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("Order")
public class CartController {
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


    @RequestMapping(value = "viewCart")
    public String viewCart(ModelMap modelMap, Model model){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        modelMap.addAttribute("Order", order);
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(accountService.getUserByUserName(authentication.getName()) != null){
            model.addAttribute("user",accountService.getUserByUserName(authentication.getName()));
            model.addAttribute("role",roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer",customerService.getCustomerById(accountService.getUserByUserName(authentication.getName()).getId()));
        }
        //get new regist user
        model.addAttribute("account", new User());
        return "user/cart";
    }

    @RequestMapping(value = "addCart")
    public String addcart(Model model, ModelMap modelMap, @ModelAttribute ProductSizeColor productSizeColor){
//        if(productSizeColor.getProductId()==null){
//            model.addAttribute("Message","Your cart is empty!");
//
//        }
        if(productSizeColor.getProductId()!=null){
            int quantity = 1;
            Orderr order = (Orderr) modelMap.getAttribute("Order");
            ProductSizeColor productSizeColor1 = productSizeColorService.getIdProductSizeColor(productSizeColor.getProductId().getId(),productSizeColor.getColorId().getId(),productSizeColor.getSizeId().getId());
            if(order.getOrderDetailsList()==null){

                Product product = new Product();
                List<ProductSizeColor> productSizeColorList = new ArrayList<ProductSizeColor>();
                productSizeColorList.add(productSizeColor1);
                product.setProductSizeColorList(productSizeColorList);
                product.setPrice(productSizeColor1.getProductId().getPrice());
                product.setId(productSizeColor1.getProductId().getId());
                product.setCategoryId(productSizeColor1.getProductId().getCategoryId());
                product.setDate(productSizeColor1.getProductId().getDate());
                product.setDescription(productSizeColor1.getProductId().getDescription());
                product.setName(productSizeColor1.getProductId().getName());

                Orderr orderNew = new Orderr();
                List<OrderDetails> listOrderDetail = new ArrayList<OrderDetails>();
                OrderDetails orderDetails = new OrderDetails();
                orderDetails.setQuantity(quantity);
                orderDetails.setAmount(product.getPrice()*quantity);
                orderDetails.setProductId(product);
                orderDetails.setOrder(orderNew);
                listOrderDetail.add(orderDetails);
                orderNew.setOrderDetailsList(listOrderDetail);
                float a = 0;
                for(OrderDetails orderDetails1 : listOrderDetail){
                    a += orderDetails1.getAmount();
                }
                orderNew.setAmount(a);
                modelMap.addAttribute("Order",orderNew);
            }
            else {
                List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
                float a = 0;
                float b = 0;
                boolean check = false;
                for (OrderDetails orderDetails : orderDetailsList){
                    if(orderDetails.getProductId().getId()==productSizeColor1.getProductId().getId()){
                        Product product = (Product) orderDetails.getProductId();
                        List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
                        for (ProductSizeColor productSizeColor2 : productSizeColorList){
                            if (productSizeColor2.getId()==productSizeColor1.getId()){
                                orderDetails.setQuantity(orderDetails.getQuantity()+quantity);
                                orderDetails.setAmount(orderDetails.getQuantity()*product.getPrice());
                                a += orderDetails.getAmount();
                                check = true;
                            }
                        }
                    }
                }
                order.setAmount(a);
                if(check==false){
                    Product product = new Product();
                    List<ProductSizeColor> productSizeColorList = new ArrayList<ProductSizeColor>();
                    productSizeColorList.add(productSizeColor1);
                    product.setProductSizeColorList(productSizeColorList);
                    product.setPrice(productSizeColor1.getProductId().getPrice());
                    product.setId(productSizeColor1.getProductId().getId());
                    product.setCategoryId(productSizeColor1.getProductId().getCategoryId());
                    product.setDate(productSizeColor1.getProductId().getDate());
                    product.setDescription(productSizeColor1.getProductId().getDescription());
                    product.setName(productSizeColor1.getProductId().getName());

                    OrderDetails orderDetails = new OrderDetails();
                    orderDetails.setQuantity(quantity);
                    orderDetails.setAmount(product.getPrice()*quantity);
                    orderDetails.setProductId(product);
                    orderDetails.setOrder(order);
                    orderDetailsList.add(orderDetails);
                    for(OrderDetails orderDetails1 : orderDetailsList){
                        b += orderDetails1.getAmount();
                    }
                    order.setAmount(b);
                }
                modelMap.addAttribute("Order",order);
            }
        }
        return "redirect: viewCart";
    }

    @RequestMapping(value = "deleteItem")
    public String deleteItem(ModelMap modelMap,@RequestParam(name = "iditem") int id){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
        for (OrderDetails orderDetails : orderDetailsList){
            Product product = (Product) orderDetails.getProductId();
            List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
            for (ProductSizeColor productSizeColor2 : productSizeColorList){
                if (productSizeColor2.getId() == id){
                    productSizeColorList.remove(productSizeColor2);
                    break;
                }
            }
        }
        modelMap.addAttribute("Order",order);
        return "redirect: viewCart";
    }

    @RequestMapping(value = "plusItem")
    public String plusItem(ModelMap modelMap,@RequestParam(name = "iditem") int id){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
        float a = 0;
        for (OrderDetails orderDetails : orderDetailsList){
                Product product = (Product) orderDetails.getProductId();
                List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
                for (ProductSizeColor productSizeColor2 : productSizeColorList){
                    if (productSizeColor2.getId() == id && orderDetails.getQuantity()<=productSizeColorService.getQuantityByProductSizeColor(productSizeColor2.getProductId().getId(),productSizeColor2.getSizeId().getId(),productSizeColor2.getColorId().getId())){
                        if (orderDetails.getQuantity()==productSizeColorService.getQuantityByProductSizeColor(productSizeColor2.getProductId().getId(),productSizeColor2.getSizeId().getId(),productSizeColor2.getColorId().getId())){
                            modelMap.addAttribute("Maximum","maximum");
                        }
                        orderDetails.setQuantity(orderDetails.getQuantity()+1);
                        orderDetails.setAmount(orderDetails.getQuantity()*product.getPrice());
                        a += orderDetails.getAmount();
                    }
                }
            }
        order.setAmount(a);
        modelMap.addAttribute("Order",order);
        return "redirect: viewCart";
        }

    @RequestMapping(value = "lessItem")
    public String lessItem(ModelMap modelMap,@RequestParam(name = "iditem") int id){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        List<OrderDetails> orderDetailsList = order.getOrderDetailsList();
        float a = 0;
        for (OrderDetails orderDetails : orderDetailsList){
            Product product = (Product) orderDetails.getProductId();
            List<ProductSizeColor> productSizeColorList = product.getProductSizeColorList();
            for (ProductSizeColor productSizeColor2 : productSizeColorList){
                if (productSizeColor2.getId() == id && orderDetails.getQuantity()>1){
                    orderDetails.setQuantity(orderDetails.getQuantity()-1);
                    orderDetails.setAmount(orderDetails.getQuantity()*product.getPrice());
                    a += orderDetails.getAmount();
                }
            }
        }
        order.setAmount(a);
        modelMap.addAttribute("Order",order);
        return "redirect: viewCart";
    }


    @ModelAttribute("Order")
    public Orderr orderCart(){
        return new Orderr();
    }
}
