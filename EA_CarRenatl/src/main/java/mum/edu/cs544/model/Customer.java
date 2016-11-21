package mum.edu.cs544.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@javax.persistence.Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long Id;
	//private String customerNumber;
	@NotEmpty
	private String fName;
	@NotEmpty
	private String lName;
	@NotEmpty
	private String phone;
	@Email
	@NotEmpty
	private String email;


	private Date dob;
	//private String identificationNumber;
	@OneToOne(cascade=CascadeType.ALL)
	@Valid
	private Address address;
	@OneToOne(cascade = CascadeType.ALL)
	@Valid
	private Account user;
	@OneToMany(fetch= FetchType.LAZY, cascade=CascadeType.ALL,mappedBy="customer")
	private List<Reservation> rents;
	
	public List<Reservation> getRents() {
		return rents;
	}
	public void setRents(List<Reservation> rents) {
		this.rents = rents;
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	/*public String getCustomerNumber() {
		return customerNumber;
	}
	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}*/
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	/*public String getIdentificationNumber() {
		return identificationNumber;
	}
	public void setIdentificationNumber(String identificationNumber) {
		this.identificationNumber = identificationNumber;
	}*/
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Account getUser() {
		return user;
	}
	public void setUser(Account user) {
		this.user = user;
	}
	
	
	
}
