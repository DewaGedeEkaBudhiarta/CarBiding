package com.AbcCarSell.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Car")
public class CarPostBeans {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int car_id;
	
	private String model;
	private String make;
	private String year;
	private String price;
	private String description;
	
public CarPostBeans() {
	
}

public CarPostBeans(int car_id, String model, String make, String year, String price, String description) {
	super();
	this.car_id = car_id;
	this.model = model;
	this.make = make;
	this.year = year;
	this.price = price;
	this.description = description;
}

public int getCar_id() {
	return car_id;
}

public void setCar_id(int car_id) {
	this.car_id = car_id;
}

public String getModel() {
	return model;
}

public void setModel(String model) {
	this.model = model;
}

public String getMake() {
	return make;
}

public void setMake(String make) {
	this.make = make;
}

public String getYear() {
	return year;
}

public void setYear(String year) {
	this.year = year;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

@Override
public String toString() {
	return "CarPostBeans [car_id=" + car_id + ", model=" + model + ", make=" + make + ", year=" + year + ", price="
			+ price + ", description=" + description + "]";
}



}
