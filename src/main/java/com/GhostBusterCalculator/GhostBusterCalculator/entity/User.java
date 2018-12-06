package com.GhostBusterCalculator.GhostBusterCalculator.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userid;
	

	private String firstname;
	
	private String lastname;
	
	private String email;
	
	private Float equipmentcost;

	private Float vehiclecost;

	private Float total;
	
	private String state;

	private String location;

	private Integer employees;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(Integer userid, String firstname, String lastname, Float equipmentcost, Float vehiclecost, Float total,
			String state, String location, Integer employees) {
		super();
		this.userid = userid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
		this.state = state;
		this.location = location;
		this.employees = employees;
	}

	public User(Integer userid, String firstname, String lastname, Float equipmentcost, Float vehiclecost, Float total,
			String location, Integer employees) {
		this.userid = userid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
		this.location = location;
		this.employees = employees;
	}
	
	public User(String firstname, String lastname, Float equipmentcost, Float vehiclecost, Float total,
			String location, Integer employees) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
		this.location = location;
		this.employees = employees;
	}
	
	public User(String firstname, String lastname, String email, String state, String location, Integer employees) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email=email;
		this.state = state;
		this.location = location;
		this.employees = employees;
	}

	public User(Integer userid,String firstname, String lastname,
			String location, Integer employees) {
		this.userid = userid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.location = location;
		this.employees = employees;
	}
	
	public User(String firstname, String lastname,
			String location, Integer employees) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.location = location;
		this.employees = employees;
	}
	
	

	public User(Float equipmentcost) {
		super();
		this.equipmentcost = equipmentcost;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Float getEquipmentcost() {
		return equipmentcost;
	}

	public void setEquipmentcost(Float equipmentcost) {
		this.equipmentcost = equipmentcost;
	}

	public Float getVehiclecost() {
		return vehiclecost;
	}

	public void setVehiclecost(Float total2) {
		this.vehiclecost = total2;
	}

	public Float getTotal() {
		return total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Integer getEmployees() {
		return employees;
	}

	public void setEmployees(Integer employees) {
		this.employees = employees;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	public String getFormattedVehicleCost() {
		return String.format("%.2f", getVehiclecost());
	}
	
	public String getFormattedEquipCost() {
		return String.format("%.2f", getEquipmentcost());
	}
	
	public String getFormattedTotal() {
		return String.format("%.2f", getTotal());
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", equipmentcost=" + equipmentcost + ", vehiclecost=" + vehiclecost + ", total=" + total + ", state="
				+ state + ", location=" + location + ", employees=" + employees + "]";
	}

	
	

}
