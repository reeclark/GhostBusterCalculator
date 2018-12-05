package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vehicle")
public class Vehicle {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer vehicleid;
	private String vehiclename;
	private String description;
	private float price;
	public Vehicle() {
		// TODO Auto-generated constructor stub
	}
	public Vehicle(Integer id, String vehiclename, String description, float price) {
		this.vehicleid = id;
		this.vehiclename = vehiclename;
		this.description = description;
		this.price = price;
	}
	
	public Vehicle(String vehiclename, String description, float price) {
		this.vehiclename = vehiclename;
		this.description = description;
		this.price = price;
	}
	public Integer getVehicleid() {
		return vehicleid;
	}
	public void setVehicleid(Integer id) {
		this.vehicleid = id;
	}
	public String getVehiclename() {
		return vehiclename;
	}
	public void setVehiclename(String vehiclename) {
		this.vehiclename = vehiclename;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Vehicle [id=" + vehicleid + ", vehiclename=" + vehiclename + ", description=" + description + ", price="
				+ price + "]";
	}
	
	
}
