package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.domain.ERPVO;
import com.erp.persistence.ERPDao;

@Service
public class ERPService {

	@Inject
	private ERPDao dao;
	
	public void insert_staff(ERPVO vo)throws Exception{
		dao.insert_staff(vo);
	}
	
	public List<ERPVO>staff_all()throws Exception{
		return dao.staff_all();
	}
	
}
