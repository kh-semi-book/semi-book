package edu.kh.semi.manager.cmm.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kh.semi.manager.cmm.model.dao.CMMDAO;

@Service
public class CMMServiceImpl implements CMMService{
	
	@Autowired
	private CMMDAO dao;
	

}
