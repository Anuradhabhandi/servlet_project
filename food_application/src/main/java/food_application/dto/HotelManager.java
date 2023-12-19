package food_application.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.UniqueConstraint;

import lombok.Data;

@Entity
@Data
public class HotelManager {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String fname;
	private String des;
	@Column(unique=true)
	private String email;
	private String pwd;
	private String hotelName;
	private long phn;
	private String address;
	
	
	
//	no argument constructor
	public HotelManager() {
		super();
	}

	
//	argumented constructor 
	public HotelManager(String fname, String des, String email, String pwd, String hotelName, long phn, String address) {
		super();
		this.fname = fname;
		this.des = des;
		this.email = email;
		this.pwd = pwd;
		this.hotelName = hotelName;
		this.phn = phn;
		this.address = address;
	}

    

}
