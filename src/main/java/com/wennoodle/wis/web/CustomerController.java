package com.wennoodle.wis.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wennoodle.wis.domain.Customer;

@RequestMapping("/controller/basic/customers")
@Controller
public class CustomerController {

	@RequestMapping(params = "json", method = RequestMethod.GET)
	public @ResponseBody
	List<Customer> customerJson(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		List<Customer> customers = new ArrayList<Customer>();
		Customer customer = new Customer();
		customer.setId(1L);
		customer.setName("威尼斯人");
		customer.setType("酒店");
		customer.setRemark("");
		for (int i = 0; i < 50; i++) {
			customer.setId(new Long(i));
			customers.add(customer);
		}

		return customers;
	}
}
