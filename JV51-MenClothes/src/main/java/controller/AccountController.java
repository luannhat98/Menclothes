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

@Controller
public class AccountController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ImageService imageService;
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private ProductSizeColorService productSizeColorService;

    @RequestMapping(value = {"/","homePage","userPage"})
    public String home(Model model){

        //save quantity product
        saveSumOfQuantityProduct();

        model.addAttribute("Image",imageService.getImageHomePage());
        model.addAttribute("ImageCategory",imageService.getImageHomePageSeachCategory("Jeans"));
        model.addAttribute("ImageCategory2",imageService.getImageHomePageSeachCategory("T-Shirt"));
        model.addAttribute("ImageCategory3",imageService.getImageHomePageSeachCategory("BlazersCoats"));

        model.addAttribute("quatity1",productService.TotalProductInCategory("T-Shirt"));
        model.addAttribute("quatity2",productService.TotalProductInCategory("Jeans"));
        model.addAttribute("quatity3",productService.TotalProductInCategory("BlazersCoats"));
        model.addAttribute("quatity4",productService.TotalProductInCategory("HoodiesSweatshirt"));

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(accountService.getUserByUserName(authentication.getName()) != null){
            model.addAttribute("user",accountService.getUserByUserName(authentication.getName()));
            model.addAttribute("role",roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer",customerService.getCustomerById(accountService.getUserByUserName(authentication.getName()).getId()));
        }

        //get new regist user
        model.addAttribute("account", new User());

        return "user/homePage";
    }

    @RequestMapping(value = { "/login" })
    public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
        if (error != null) {
            model.addAttribute("message", "Login Failed! Username or password is wrong, please try again!");
        }
        return "user/login";
    }


//    @RequestMapping(value = "regist")
//    public String addAccount(Model model) {
//        model.addAttribute("account", new User());
//        return "user/regist";
//    }

    @RequestMapping(value = "addAccountUser", method = RequestMethod.POST)
    public String addAcount(@ModelAttribute User account, Model model){

        for (User account1 : accountService.viewAllAccount()){
            if (account.getUsername().equals(account1.getUsername())){
                model.addAttribute("message","Username available, please try again!");
                model.addAttribute("account", new User());
                return "user/regist";
            }
        }
        account.setPassword("{noop}"+account.getPassword());
        accountService.addAccount(account);
        Role role = new Role();
        role.setRole("ROLE_USER");
        role.setUsername(account.getUsername());
        roleService.addRole(role);
        Customer customer = new Customer();
        customer.setName(account.getUsername());
        customer.setId(account.getId());
        customerService.addCustomer(customer);
        return "redirect: homePage";
    }

    @RequestMapping(value = "userOrder")
    public String userOrder(ModelMap modelMap, Model model,@RequestParam(name = "page") int page){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = accountService.getUserByUserName(authentication.getName());
        if(accountService.getUserByUserName(authentication.getName()) != null){
            model.addAttribute("user",accountService.getUserByUserName(authentication.getName()));
            model.addAttribute("role",roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer",customerService.getCustomerById(user.getId()));
            model.addAttribute("userOrder",orderService.getOrderrByAccountId(user.getId()));

            model.addAttribute("pageItemBegin", 5*(page-1));
            model.addAttribute("pageItemEnd",5*page-1);

            // Total page
            if (orderService.getTimeOrderByAccountId(user.getId()) % 5 > 0){
                model.addAttribute("totalPage", orderService.getTimeOrderByAccountId(user.getId())/5 + 1);
            }
            else {
                model.addAttribute("totalPage",orderService.getTimeOrderByAccountId(user.getId())/5);
            }
        }
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        modelMap.addAttribute("Order", order);
        //get new regist user
        model.addAttribute("account", new User());
        return "user/userOrder";
    }

    @RequestMapping(value = "updateCustomer")
    public String updateCustomer(@ModelAttribute Customer customer){
        Customer customerNew = customerService.getCustomerById(customer.getId());
        customerNew.setPhone(customer.getPhone());
        customerNew.setEmail(customer.getEmail());
        customerNew.setAddress(customer.getAddress());
        customerNew.setName(customer.getName());
        customerService.addCustomer(customerNew);
        return "redirect: userOrder?page=1";
    }

    @RequestMapping(value = "blog")
    public String blog(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(accountService.getUserByUserName(authentication.getName()) != null){
            model.addAttribute("user",accountService.getUserByUserName(authentication.getName()));
            model.addAttribute("role",roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer",customerService.getCustomerById(accountService.getUserByUserName(authentication.getName()).getId()));
            model.addAttribute("userOrder",orderService.getOrderrByAccountId(accountService.getUserByUserName(authentication.getName()).getId()));
        }
        //get new regist user
        model.addAttribute("account", new User());
        return "user/blog";
    }

    public void saveSumOfQuantityProduct(){
        for(Product product : productService.getAllProduct()){
            product.setQuantity(productSizeColorService.getQuantityProduct(product.getId()));
            productService.addProduct(product);
        }
    }
}
