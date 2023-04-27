package controller;

import entity.Orderr;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.*;

@Controller
public class ViewController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ProductService productService;
    @Autowired
    private ImageService imageService;

    @RequestMapping(value = "adminPage")
    public String view(){
        return "admin/Adminpage";
    }

    @RequestMapping(value = "shop")
    public String viewShop(ModelMap modelMap, Model model,@RequestParam(name = "page") int page){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        modelMap.addAttribute("Order", order);
        model.addAttribute("Image",imageService.getImageHomePage());
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
        //get begin end product
        model.addAttribute("beginProduct", 9*(page-1));
        model.addAttribute("endProduct",9*page-1);
        //get total page
        if (imageService.getTotalProduct() % 9 >0){
            model.addAttribute("totalPage", imageService.getTotalProduct()/9+1);
        }
        else {
            model.addAttribute("totalPage",imageService.getTotalProduct()/9);
        }
        //get new regist user
        model.addAttribute("account", new User());
        return "user/shop";
    }

    @RequestMapping(value = "error")
    public String error(){
        return "user/error";
    }
    
}
