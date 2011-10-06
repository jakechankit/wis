package com.wennoodle.wis.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wennoodle.wis.domain.Product;

@RequestMapping("/controller/basic/products")
@Controller
public class ProductController {
	
	@RequestMapping(params = "json", method = RequestMethod.GET)
    public @ResponseBody List<Product> productJson(HttpServletRequest request, HttpServletResponse response) throws Exception{
        List<Product> products=new ArrayList<Product>();
        Product product = new Product();
        product.setId(1L);
        product.setName("湯粉");
        product.setUnit("斤");
        product.setUnitprice("25.00");
        product.setRemark("");
        for (int i = 0; i < 50; i++) {
        	product.setId(new Long(i));
        	products.add(product);	
		}
        
        return products;
    }
}
