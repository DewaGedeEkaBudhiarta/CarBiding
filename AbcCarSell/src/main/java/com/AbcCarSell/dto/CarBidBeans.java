package com.AbcCarSell.dto;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CarBiding")
public class CarBidBeans {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int carBid_id;
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="car_id")
    private CarPostBeans car;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="user_id")
	private AbcUserBeans user;

	private String price;
	
	public CarBidBeans( ) {
		
	}


	public CarBidBeans(int carBid_id, CarPostBeans car, AbcUserBeans user, String price) {
		super();
		this.carBid_id = carBid_id;
		this.car = car;
		this.user = user;
		this.price = price;
	}

	public int getCarBid_id() {
		return carBid_id;
	}

	public void setCarBid_id(int carBid_id) {
		this.carBid_id = carBid_id;
	}

	public CarPostBeans getCar() {
		return car;
	}

	public void setCar(CarPostBeans car) {
		this.car = car;
	}

	public AbcUserBeans getUser() {
		return user;
	}

	public void setUser(AbcUserBeans user) {
		this.user = user;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "CarBidBeans [carBid_id=" + carBid_id + ", car=" + car + ", user=" + user + ", price=" + price + "]";
	}

}
