package com.erp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.domain.LoginVo;

@Repository
public class LoginDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace 
	="com.erp.mapper.ERPMapper";
	
	public void insert_Pro(LoginVo vo) throws Exception {
		session.insert(namespace+".register", vo);

	}
	
}
