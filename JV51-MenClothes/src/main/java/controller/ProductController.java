package controller;

import entity.Orderr;
import entity.ProductSizeColor;
import entity.Review;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("Order")
public class ProductController {
    @Autowired
    private ImageService imageService;
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductSizeColorService productSizeColorService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ReviewService reviewService;
    @Autowired
    private OrderDetailsService orderDetailsService;

    @RequestMapping(value = "seachCategory")
    public String SeachCategory(@RequestParam(name = "category") String name, Model model){
        model.addAttribute("categorySeach", imageService.getImageHomePageSeachCategory(name));
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

    @RequestMapping(value = "seachProduct")
    public String SeachProductTool(@RequestParam(name = "seachText") String name, Model model){
        model.addAttribute("seachProdcut", imageService.getSeachProduct(name,name));
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
    @RequestMapping(value = "seachPrice")
    public String SeachProductPrice(@RequestParam(name = "price") int price,Model model){
        if(price == 0){
            model.addAttribute("seachProductPrice",imageService.getSeachProductPrice(0,40));
        }
        if(price == 40){
            model.addAttribute("seachProductPrice",imageService.getSeachProductPrice(40,100));
        }
        if(price==100){
            model.addAttribute("seachProductPrice",imageService.getSeachProductPrice(100,1000));
        }

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
    @RequestMapping(value = "productDetails")
    public String productDetails(ModelMap modelMap, @RequestParam(name = "id") int id, Model model){
        Orderr order = (Orderr) modelMap.getAttribute("Order");
        modelMap.addAttribute("Order", order);
        model.addAttribute("productDetailsList",imageService.getProductDetails(id));
        model.addAttribute("ListproductSizeColor",productSizeColorService.productSizeColor(id));
        model.addAttribute("quantityProduct",productSizeColorService.getQuantityProduct(id));
        model.addAttribute("productSizeColor",new ProductSizeColor());

        model.addAttribute("quatity1",productService.TotalProductInCategory("T-Shirt"));
        model.addAttribute("quatity2",productService.TotalProductInCategory("Jeans"));
        model.addAttribute("quatity3",productService.TotalProductInCategory("BlazersCoats"));
        model.addAttribute("quatity4",productService.TotalProductInCategory("HoodiesSweatshirt"));

        model.addAttribute("Image",imageService.getImageHomePage());

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        User user = accountService.getUserByUserName(authentication.getName());
        if(user != null){
            model.addAttribute("user", user);
            model.addAttribute("role",roleService.getRoleByUserName(authentication.getName()));
            model.addAttribute("customer",customerService.getCustomerById(user.getId()));

            //get number of times purchased
            model.addAttribute("numOfTimePurchased", orderDetailsService.getCountByAccountIdAndProductId(user.getId(),id));
            //get number of times review
            model.addAttribute("numOftimeReview",reviewService.getCountByProductIdAndAccountId(user.getId(),id));
        }
        //get average star for product
        if (reviewService.getTimeOfReviewByIdProduct(id) != 0){
            model.addAttribute("averageStar",String.format("%.1f",reviewService.getTotalStarByIdProduct(id)/reviewService.getTimeOfReviewByIdProduct(id)));
        }
        else {
            model.addAttribute("averageStar", 5);
        }
        //get List Review Product
        model.addAttribute("reviewList", reviewService.getReviewByIdProduct(id));
        //get new Review
        model.addAttribute("newReview",new Review());
        //get new regist user
        model.addAttribute("account", new User());
        return "user/productDetails";
    }

    @RequestMapping(value = "userAddReview")
    public String addReview(@ModelAttribute Review review){

        review.setDate(LocalDateTime.now());
        review.setAccountId(accountService.getUserById(review.getAccountId().getId()));
        reviewService.addReview(review);
        return "redirect: productDetails?id="+review.getProductId().getId();
    }

    @RequestMapping(value = "userLoginToComment")
    public String userLoginToReview(@RequestParam(name = "id") int id){
        return "redirect: productDetails?id="+id;
    }

}
