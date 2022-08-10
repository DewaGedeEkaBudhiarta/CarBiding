package com.AbcCarSell.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.AbcCarSell.dto.CarBidBeans;

public interface carBidDao extends JpaRepository<CarBidBeans, Integer> {

}
