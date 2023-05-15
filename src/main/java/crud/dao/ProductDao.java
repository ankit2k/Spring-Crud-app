package crud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import crud.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	//1.Create
	@Transactional
	public void createProduct(Product product) {
		
		//if id already present in dataBase then Update otherwise add
		
		this.hibernateTemplate.saveOrUpdate(product);
		

	}

	//2.Fetch all product
	@Transactional
	public List<Product> getProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	//3.Delete a single product
	@Transactional
	public void deleteProducts(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		// passing the object
		this.hibernateTemplate.delete(p);
	}

	//4.get a single product
	@Transactional
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);

	}

}
