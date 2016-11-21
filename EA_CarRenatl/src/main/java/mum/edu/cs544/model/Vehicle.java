package mum.edu.cs544.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
public class Vehicle {
	@Id
	@GeneratedValue
	private Long id;	
	@NotEmpty
	private String brand;
	@NotEmpty	
	private String type;
	@NotEmpty	
	private String vehiclePlateNumber;		
	private int model;
	@Min(1)
	private int numberOfSeats;
	@Min(0)	
	private double dailyPrice;
	private boolean isAvailable=true;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getVehiclePlateNumber() {
		return vehiclePlateNumber;
	}
	public void setVehiclePlateNumber(String vehiclePlateNumber) {
		this.vehiclePlateNumber = vehiclePlateNumber;
	}
	public int getModel() {
		return model;
	}
	public void setModel(int model) {
		this.model = model;
	}
	public int getNumberOfSeats() {
		return numberOfSeats;
	}
	public void setNumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}
	public double getDailyPrice() {
		return dailyPrice;
	}
	public void setDailyPrice(double dailyPrice) {
		this.dailyPrice = dailyPrice;
	}
	/*public boolean isAvailable() {
		return isAvailable;
	}
	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}
*/
	
}
