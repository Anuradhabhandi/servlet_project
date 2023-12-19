package food_application.dto;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String   fname;
	private String  lname;
	private String email;
	private String pwd;
	private long  phone;
	private String  address;
	private String gender;
	
	@OneToMany
	private List<Food> food;
	
	public User() {
		super();
	}
	
	public User(String fname, String lname, String email, String pwd, long phone, String address, String gender) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.pwd = pwd;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
	}

	public User(String email, String pwd) {
		super();
		this.email = email;
		this.pwd = pwd;
	}
	
}
