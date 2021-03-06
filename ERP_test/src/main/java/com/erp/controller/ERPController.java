package com.erp.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.erp.domain.ERPVO;
import com.erp.domain.LoginVo;
import com.erp.domain.skillVO;
import com.erp.service.ERPService;
import com.erp.service.LoginService;

@Controller
public class ERPController {
	
	@Inject
	private ERPService service;

	@Inject
	private LoginService lo_service;
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(LoginVo vo)throws Exception{

		lo_service.insert_Pro(vo);
		return "home";
	}
	
	
	@RequestMapping(value="/search_form", method=RequestMethod.GET)
	public String staff_search_form()throws Exception{

		return "staff_search_form";
	}
	
	@RequestMapping(value="/staff_input_form", method=RequestMethod.GET)
	public String staff_input_form()throws Exception{

		return "staff_input_form";
	}
	
	
	@RequestMapping(value="/insert_staff", method=RequestMethod.POST)
	@ResponseBody
	public void insert_staff(@ModelAttribute("registerForm") ERPVO erp, @RequestParam("skill_codes")String [] skill_codes)throws Exception{
		System.out.println("insert_controller");
		System.out.println(erp.toString());
		service.insert_staff(erp);
		
		
		String jumin_no = erp.getJumin_no();
		int staff_no = service.staff_no(jumin_no);
		erp.setStaff_no(staff_no);
		

		for(int i = 0 ; i<skill_codes.length; i++){
			skillVO skillvo = new skillVO();
			 skillvo.setStaff_no(staff_no);
			 skillvo.setSkill_code(Integer.parseInt(skill_codes[i]));
			 System.out.println(skill_codes[i].toString());
			 service.insert_staff_skill(skillvo);
			}
		
	}
	
	@RequestMapping(value="/staff_all", method=RequestMethod.GET)
	public String staff_all(@ModelAttribute("erp") ERPVO erp, Model model)throws Exception{
		System.out.println("staff_all");
		List<ERPVO> list = service.staff_all();
		System.out.println(list.toString());
		model.addAttribute("list",list );
		return "staff_search_form";
	}
	
	@RequestMapping(value="/staff_updel_form", method=RequestMethod.GET)
	public String staff_updel_form(@Param("staff_no") int staff_no, Model model)throws Exception{
		
		ERPVO userErp= service.staff_one(staff_no);
		List<skillVO> skillList = null;
		// 존재
		if(userErp != null){
			skillList = service.getkillList(staff_no);
			System.out.println("skillList : " + skillList.size());
		}
		model.addAttribute("userErp", userErp);
		model.addAttribute("skillList", skillList);
		return "staff_updel_form";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String searh_staff(@ModelAttribute("searchForm") ERPVO erp, Model model)throws Exception{
		
		System.out.println("in");
		
		String search_name = erp.getStaff_name();
		String staff_name = "%"+search_name+"%";
		erp.setStaff_name(staff_name);
		List<ERPVO> list = service.searh_staff(erp);
		System.out.println(erp.toString());
		if(!list.isEmpty()){
			System.out.println("list : " + list.size());
		}
		model.addAttribute("list", list);
		return "staff_search_form";
	}
	
	@RequestMapping(value="/delete")
	public String delete(@Param("staff_no")int staff_no)throws Exception{
		
		return  "staff_search_form";
	}
}
