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
	private int equipmentcost;
	private int vehiclecost;
	private int total;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(Integer userid, String firstname, String lastname, int equipmentcost, int vehiclecost, int total) {
		this.userid = userid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
	}
	
	public User(String firstname, String lastname, int equipmentcost, int vehiclecost, int total) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.equipmentcost = equipmentcost;
		this.vehiclecost = vehiclecost;
		this.total = total;
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
	public int getEquipmentcost() {
		return equipmentcost;
	}
	public void setEquipmentcost(int equipmentcost) {
		this.equipmentcost = equipmentcost;
	}
	public int getVehiclecost() {
		return vehiclecost;
	}
	public void setVehiclecost(int vehiclecost) {
		this.vehiclecost = vehiclecost;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", firstname=" + firstname + ", lastname=" + lastname + ", equipmentcost="
				+ equipmentcost + ", vehiclecost=" + vehiclecost + ", total=" + total + "]";
	}
}
