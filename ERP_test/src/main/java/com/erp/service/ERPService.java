package com.erp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.erp.domain.ERPVO;
import com.erp.domain.skillVO;
import com.erp.persistence.ERPDao;

@Service
public class ERPService {

	@Inject
	private ERPDao dao;
	
	public void insert_staff(ERPVO vo)throws Exception{
		dao.insert_staff(vo);
		
	}
	
	public void insert_staff_skill(skillVO vo)throws Exception{
		System.out.println("in");
		System.out.println(vo.toString());
		
		dao.insert_staff_skill(vo);
	}
	
	public int staff_no(String jumin_no)throws Exception{
	 return dao.staff_no(jumin_no);
	}
	
	public List<ERPVO>staff_all()throws Exception{
		return dao.staff_all();
	}
	
	public ERPVO staff_one(int staff_no)throws Exception{
		return dao.staff_one(staff_no);
	}
	
	//조건 검색
	public List<ERPVO>searh_staff(ERPVO vo)throws Exception{
		System.out.println(vo.getStaff_name());
		System.out.println(vo.getSchool_code());
		System.out.println(vo.getBefore_graduate_day());
		System.out.println(vo.getAfter_graduate_day());
		
		return dao.searh_staff(vo);
	}

	public List<skillVO> getkillList(int staff_no) {
		return dao.getkillList(staff_no);
	}
}
