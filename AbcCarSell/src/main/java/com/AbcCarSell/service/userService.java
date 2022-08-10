package com.AbcCarSell.service;

import java.util.List;

import com.AbcCarSell.dao.carBidDao;
import com.AbcCarSell.dto.AbcUserBeans;
import com.AbcCarSell.dto.CarBidBeans;
import com.AbcCarSell.dto.CarPostBeans;

public interface userService {
	
	//add user
	public void addUser(AbcUserBeans x);
	
	//postcar
	public void carPost(CarPostBeans postCar);
	
	public List<AbcUserBeans> showAllUser();
	public List<CarPostBeans> showAllCar();
	public List<CarBidBeans> showAllBidder();
	
	
	public List<CarPostBeans> search(String search);
	
	//deletedata user
	public void deleteData(int id);
	
	//deletedata car
	public void deleteDataCar(int car_id);
	
	//finding using id user
    public AbcUserBeans findById(int id_user);
    
  //finding using id car
    public CarPostBeans findByIdcar(int car_id);
    
    
    //search email for security
    public AbcUserBeans login(String username);
    
    //password encoder
    public void encode(AbcUserBeans encode); 
    
    //bid car
    public void bidding(CarBidBeans carbid);

}
