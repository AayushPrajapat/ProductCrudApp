package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
//	create product
	@Transactional
	public void createProduct(Product product) {
//		this.hibernateTemplate.saveOrUpdate(product);
		this.hibernateTemplate.saveOrUpdate(product);
	}
//get all Product
	public List<Product> getAllProduct() {/*	kis class ka object get krna  product.class*/
		List<Product> productList = this.hibernateTemplate.loadAll(Product.class);
		return productList;
		
	}
//	delete the single product
	@Transactional
	public void deleteProduct(int product) {
		Product load = this.hibernateTemplate.load(Product.class,product);
				this.hibernateTemplate.delete(load);
	}
	
//	get the single product
	public Product getSingleProduct(int pid) {
		Product product = this.hibernateTemplate.get(Product.class, pid);
		return product;
	}
	
	@Transactional
	public void updateProduct(Product product) {
		this.hibernateTemplate.update(product);
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
}

