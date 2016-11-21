package mum.edu.cs544.service;

import java.util.List;

import mum.edu.cs544.model.Customer;





public interface UserService {
	public List<Customer> getAll();
	public Customer getCustomerById(Long key);
	public void add(Customer customer);
	public void delete(Long id);

}
