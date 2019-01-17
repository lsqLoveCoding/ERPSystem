package org.shop.service;

import java.util.List;

import org.shop.pojo.Customer;

public interface CustomerService {
	  public void addCustomer(Customer customer);
	    public List<Customer> queryByName(Customer customer);
	      public List<Customer> queryCustomerByName(String name);
	      public Customer       queryCustomerByPhone(String phone);
	      public List<Customer> queryAllCustomers();
	      public void updateCustomer(Customer customer);
}
