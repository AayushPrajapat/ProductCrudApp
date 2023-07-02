package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("going to home method..");
		List<Product> allProduct = this.productDao.getAllProduct();
		model.addAttribute("product", allProduct);

		return "index";
	}

//		show add product form
	@RequestMapping("/add-product")
	public String addproduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "add_product_form";
	}

//		Handler productHandler form
	@RequestMapping(path = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product) {
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("home");
		productDao.createProduct(product);
		System.out.println(product);
		return redirectView;

	}

	// Delete the product
	@RequestMapping("/delete/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
		this.productDao.deleteProduct(productId);
		return "redirect:/home";
	}
	
	@RequestMapping("/update/{productId}")
	public String showUpdate(@PathVariable("productId") int productId,Model model)  {
			Product product = this.productDao.getSingleProduct(productId);
				model.addAttribute(product);
		return "update_Form";
	}
	
	@RequestMapping(path = "/updateHandle",method = RequestMethod.POST)
	public String updateHandleForm(@ModelAttribute Product product) {
				this.productDao.updateProduct(product);
		return "redirect:/home";
	}
	
	
	
		
	
	

}
