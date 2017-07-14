package com.erp.domain;

import java.io.Serializable;

public class skillVO implements Serializable {

	private int staff_no;
	private int skill_code;
	
	public skillVO(){};
	
	public skillVO(int staff_no, int skill_code) {
		super();
		this.staff_no = staff_no;
		this.skill_code = skill_code;
	}

	public int getStaff_no() {
		return staff_no;
	}

	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}

	public int getSkill_code() {
		return skill_code;
	}

	public void setSkill_code(int skill_code) {
		this.skill_code = skill_code;
	}

	@Override
	public String toString() {
		return "skillVO [staff_no=" + staff_no + ", skill_code=" + skill_code + "]";
	}
	
	
}
