package com.erp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.domain.ERPVO;

@Repository
public class ERPDao {
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	="com.erp.mapper.ERPMapper";
	

	public void insert_staff(ERPVO vo)throws Exception{
		session.insert(namespace+".insert_staff", vo);
	}
	
	public List<ERPVO>staff_all()throws Exception{
		return session.selectList(namespace+".staff_all");
	}
}
