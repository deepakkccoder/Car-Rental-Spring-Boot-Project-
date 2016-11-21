package mum.edu.cs544.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.cs544.model.Customer;
import mum.edu.cs544.repository.UserRepository;
import mum.edu.cs544.service.UserService;



@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepository userRepository;

	@Override
	public List<Customer> getAll() {
		return (List<Customer>)userRepository.findAll();
	}

	@Override
	public Customer getCustomerById(Long key) {
		return userRepository.findOne(key);
	}

	@Override
	public void add(Customer customer) {
		userRepository.save(customer);
		
		
	}

	@Override
	public void delete(Long id) {
		userRepository.delete(id);
		
	}

}
