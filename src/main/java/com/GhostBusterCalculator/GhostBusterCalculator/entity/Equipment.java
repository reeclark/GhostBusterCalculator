package com.GhostBusterCalculator.GhostBusterCalculator.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="equipment")
public class Equipment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String item;
	private String description;
	private int price;
	public Equipment() {
		// TODO Auto-generated constructor stub
	}
	public Equipment(Integer id, String item, String description, int price) {
		this.id = id;
		this.item = item;
		this.description = description;
		this.price = price;
	}
	
	public Equipment(String item, String description, int price) {
		this.item = item;
		this.description = description;
		this.price = price;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Equipment [id=" + id + ", item=" + item + ", description=" + description + ", price=" + price + "]";
	}
}
