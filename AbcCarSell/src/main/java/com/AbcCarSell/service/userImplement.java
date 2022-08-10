package com.AbcCarSell.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.AbcCarSell.dao.carBidDao;
import com.AbcCarSell.dao.carDao;
import com.AbcCarSell.dao.userDao;
import com.AbcCarSell.dto.AbcUserBeans;
import com.AbcCarSell.dto.CarBidBeans;
import com.AbcCarSell.dto.CarPostBeans;

@Service("userService")
public class userImplement implements userService {

	@Autowired
	userDao udao;
	
	@Autowired
	carDao cdao;
	
	@Autowired
	carBidDao bdao;
	
	@Override
	public void addUser(AbcUserBeans x) {
		// TODO Auto-generated method stub
		//setUser role
		x.setRole("USER");
		//setPassword encoder
		x.setPassword(passwordencoder.encode(x.getPassword()));
		udao.save(x);
	}
	//password encoder field
	private PasswordEncoder passwordencoder;
	public userImplement(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	

	@Override
	public void carPost(CarPostBeans postCar) {
		// TODO Auto-generated method stub
		cdao.save(postCar);
		
	}

	@Override
	public List<AbcUserBeans> showAllUser() {
		List <AbcUserBeans> databaseall=udao.findAll();
		// TODO Auto-generated method stub
		return databaseall;
	}

	@Override
	public List<CarPostBeans> showAllCar() {
		List <CarPostBeans> databaseall=cdao.findAll();
		// TODO Auto-generated method stub
		return databaseall;
	}

	@Override
	public List<CarPostBeans> search(String search) {
		// TODO Auto-generated method stub
		return cdao.findByMakeAndModel(search);
	}

	//finding using id user
	@Override
	public AbcUserBeans findById(int id_user) {
		// TODO Auto-generated method stub
		Optional<AbcUserBeans> userData = udao.findById(id_user);
		AbcUserBeans d=userData.get();
		System.out.println(d);
		return d;
	}

	//login for security by search for email
	@Override
	public AbcUserBeans login(String username) {
		AbcUserBeans userLogin = udao.findByUsername(username);
		return userLogin;
	}

	//password encoder first
	@Override
	public void encode(AbcUserBeans encode) {
		// TODO Auto-generated method stub
		udao.save(encode);
	}

//deletedata user
	@Override
	public void deleteData(int id) {
		// TODO Auto-generated method stub
		udao.deleteById(id);
	}


	//finding using id user
	@Override
	public CarPostBeans findByIdcar(int car_id) {
		// TODO Auto-generated method stub
		Optional<CarPostBeans> carData = cdao.findById(car_id);
		CarPostBeans c=carData.get();
		System.out.println(c);
		return c;
	}


	@Override
	public void deleteDataCar(int car_id) {
		// TODO Auto-generated method stub
		cdao.deleteById(car_id);
	}


	//bid car
	@Override
	public void bidding(CarBidBeans carbid) {
		// TODO Auto-generated method stub
		bdao.save(carbid);
	}


	@Override
	public List<CarBidBeans> showAllBidder() {
		List<CarBidBeans> databaseall=bdao.findAll();
		// TODO Auto-generated method stub
		return databaseall;
	}
	

	
}
