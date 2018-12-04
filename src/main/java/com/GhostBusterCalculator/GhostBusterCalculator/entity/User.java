package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import javax.persistence.Column;
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
	
	private Float equipmentcost;

	private Integer vehiclecost;

	private Float total;

	private String location;

	private Integer employees;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(Integer userid, String firstname, String lastname, Float equipmentcost, Integer vehiclecost, Float total,
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
	
	public User(String firstname, String lastname, Float equipmentcost, Integer vehiclecost, Float total,
			String location, Integer employees) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
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

	public Float getEquipmentcost() {
		return equipmentcost;
	}

	public void setEquipmentcost(Float equipmentcost) {
		this.equipmentcost = equipmentcost;
	}

	public Integer getVehiclecost() {
		return vehiclecost;
	}

	public void setVehiclecost(Integer vehiclecost) {
		this.vehiclecost = vehiclecost;
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

	@Override
	public String toString() {
		return "User [userid=" + userid + ", firstname=" + firstname + ", lastname=" + lastname + ", equipmentcost="
				+ equipmentcost + ", vehiclecost=" + vehiclecost + ", total=" + total + ", location=" + location
				+ ", employees=" + employees + "]";
	}
}
