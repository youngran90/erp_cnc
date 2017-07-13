package com.erp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.erp.domain.LoginVo;
import com.erp.persistence.LoginDAO;

@Service
public class LoginService {

	@Inject
	private LoginDAO dao;
	
	public void insert_Pro(LoginVo vo) throws Exception {
		dao.insert_Pro(vo);
	}
	
}
