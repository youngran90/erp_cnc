package com.erp.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.erp.domain.ERPVO;
import com.erp.domain.skillVO;

@Repository
public class ERPDao {
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	="com.erp.mapper.ERPMapper";
	

	public void insert_staff(ERPVO vo)throws Exception{
		session.insert(namespace+".insert_staff", vo);
	}
	
	public int staff_no(String jumin_no)throws Exception{
		return session.selectOne(namespace+".staff_no", jumin_no);
	}
	
	public void insert_staff_skill(skillVO vo)throws Exception{
		session.insert(namespace+".insert_staff_skill", vo);
	}
	
	//한명검색
	public ERPVO staff_one(int staff_no)throws Exception{
		return session.selectOne(namespace+".staff_one", staff_no);
	}
	
	//전체검색
	public List<ERPVO>staff_all()throws Exception{
		return session.selectList(namespace+".staff_all");
	}
	
	
//조건 검색 조회
	public List<ERPVO>searh_staff(ERPVO vo)throws Exception{
		return session.selectList(namespace+".searh_staff", vo);
	}

	public List<skillVO> getkillList(int staff_no) {
		return session.selectList(namespace+".getkillList", staff_no);
	}
	
}
