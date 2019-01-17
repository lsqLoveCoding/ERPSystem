package org.shop.service.impl;

import java.util.List;

import org.shop.dao.CustomerDao;
import org.shop.pojo.Customer;
import org.shop.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao cd;
	@Override
	public void addCustomer(Customer customer) {
		cd.addCustomer(customer);
	}
	@Override
	public List<Customer> queryByName(Customer customer) {
		return cd.queryByName(customer);
	}
	@Override
	public List<Customer> queryCustomerByName(String name) {
		return cd.queryCustomerByName(name);
	}
	@Override
	public List<Customer> queryAllCustomers() {
		return cd.queryAllCustomers();
	}
	@Override
	public Customer queryCustomerByPhone(String phone) {
		return cd.queryCustomerByPhone(phone);
	}
	@Override
	public void updateCustomer(Customer customer) {
		cd.updateCustomer(customer);
		
	}

}
