package crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crud.dao.ProductDao;
import crud.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao dao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products = dao.getProducts();
		m.addAttribute("products", products);
		return "index";
	}

	// show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product_form";
	}

	// handle add product form
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest req) {
		System.out.println(product);
		dao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath() + "/");
		return redirectView;
	}

//--------------------------Delete-------------------------------------------------
	// show add product form
	@RequestMapping(value = "/delete/{productId}", method = RequestMethod.GET)
	public RedirectView deleteProduct(@PathVariable("productId") int productId, @ModelAttribute Product product,
			HttpServletRequest req) {
		this.dao.deleteProducts(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath() + "/");
		return redirectView;
	}

// --------------------------Update-------------------------------------------------
	// show add product form
	@RequestMapping(value = "/update/{productId}", method = RequestMethod.GET)
	public String updateProduct(Model m, @PathVariable("productId") int productId) {
		Product product=dao.getProduct(productId);
		m.addAttribute("product",product);
		return "update_form";
	}
}
