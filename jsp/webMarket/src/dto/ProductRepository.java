package dto;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product ("p1234", "iPhone 13 Pro", 1500000);
		phone.setDescription("5.5-inch, 1500 * 750 Retina FHD display, 10-megapixel Camera");
		phone.setCategory("Smart phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(100);
		
		Product notebook = new Product ("p1235", "LG 그램", 200000);
		phone.setDescription("13-inch, 1900 * 1450 Retina FHD display, 15-megapixel Camera");
		phone.setCategory("Notebook");
		phone.setManufacturer("LG");
		phone.setUnitsInStock(100);

		Product tablet = new Product ("p1236", "Galaxy Tap 8", 1000000);
		phone.setDescription("11-inch, 1080 * 1020 Retina FHD display, 15-megapixel Camera");
		phone.setCategory("tablet");
		phone.setManufacturer("삼성");
		phone.setUnitsInStock(100);
	}
	
	public ArrayList<Product> getAllProducts(){
		
	}
}
