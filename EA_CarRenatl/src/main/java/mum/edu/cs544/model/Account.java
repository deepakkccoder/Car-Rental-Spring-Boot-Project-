package mum.edu.cs544.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Account {
	@javax.persistence.Id
	@GeneratedValue
	private Long Id;
	@NotEmpty
	@Size(min=5, max=20, message="{username.size}")
	private String username;
	@NotEmpty
	@Size(min=5, max=20, message="{password.size}")
	private String password;
	@Enumerated(EnumType.STRING)
	private Role hasRole;
	private boolean enabled;
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String userName) {
		this.username = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Role getHasRole() {
		return hasRole;
	}
	public void setHasRole(Role hasRole) {
		this.hasRole = hasRole;
	}
	
	
}
