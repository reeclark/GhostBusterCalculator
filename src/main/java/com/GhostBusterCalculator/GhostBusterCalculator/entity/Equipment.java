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
	private Float price;
	private String image;
	
	public Equipment() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Equipment(Integer id, String item, String description, Float price, String image) {
		super();
		this.id = id;
		this.item = item;
		this.description = description;
		this.price = price;
		this.image = image;
	}



	public Equipment(Integer id, String item, String description, Float price) {
		this.id = id;
		this.item = item;
		this.description = description;
		this.price = price;
	}
	
	public Equipment(String item, String description, Float price) {
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
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	
	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}

	public String getFormattedPrice() {
		return String.format("%.2f", getPrice());
	}


	@Override
	public String toString() {
		return "Equipment [id=" + id + ", item=" + item + ", description=" + description + ", price=" + price + "]";
	}
}
