package com.erp.domain;

import java.io.Serializable;
import java.util.Date;

public class ERPVO implements Serializable{

	private int staff_no;
	private String staff_name;
	private String gender;
	private int religion_code;
	private String religion_name;
	private String before_graduate_day;
	private String after_graduate_day;
	private String graduate_day;
	private String jumin_no;
	private int school_code;
	private String school_name;
	private int skill_code;
	private String skill_name;
	private int staff_skill_no;
	
	public ERPVO(){}

	public ERPVO(int staff_no, String staff_name, String gender, int religion_code, String religion_name,
			String before_graduate_day, String after_graduate_day, String graduate_day, String jumin_no,
			int school_code, String school_name, int skill_code, String skill_name, int staff_skill_no) {
		super();
		this.staff_no = staff_no;
		this.staff_name = staff_name;
		this.gender = gender;
		this.religion_code = religion_code;
		this.religion_name = religion_name;
		this.before_graduate_day = before_graduate_day;
		this.after_graduate_day = after_graduate_day;
		this.graduate_day = graduate_day;
		this.jumin_no = jumin_no;
		this.school_code = school_code;
		this.school_name = school_name;
		this.skill_code = skill_code;
		this.skill_name = skill_name;
		this.staff_skill_no = staff_skill_no;
	}

	public int getStaff_no() {
		return staff_no;
	}

	public void setStaff_no(int staff_no) {
		this.staff_no = staff_no;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getReligion_code() {
		return religion_code;
	}

	public void setReligion_code(int religion_code) {
		this.religion_code = religion_code;
	}

	public String getReligion_name() {
		return religion_name;
	}

	public void setReligion_name(String religion_name) {
		this.religion_name = religion_name;
	}

	public String getBefore_graduate_day() {
		return before_graduate_day;
	}

	public void setBefore_graduate_day(String before_graduate_day) {
		this.before_graduate_day = before_graduate_day;
	}

	public String getAfter_graduate_day() {
		return after_graduate_day;
	}

	public void setAfter_graduate_day(String after_graduate_day) {
		this.after_graduate_day = after_graduate_day;
	}

	public String getGraduate_day() {
		return graduate_day;
	}

	public void setGraduate_day(String graduate_day) {
		this.graduate_day = graduate_day;
	}

	public String getJumin_no() {
		return jumin_no;
	}

	public void setJumin_no(String jumin_no) {
		this.jumin_no = jumin_no;
	}

	public int getSchool_code() {
		return school_code;
	}

	public void setSchool_code(int school_code) {
		this.school_code = school_code;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public int getSkill_code() {
		return skill_code;
	}

	public void setSkill_code(int skill_code) {
		this.skill_code = skill_code;
	}

	public String getSkill_name() {
		return skill_name;
	}

	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}

	public int getStaff_skill_code() {
		return staff_skill_no;
	}

	public void setStaff_skill_no(int staff_skill_no) {
		this.staff_skill_no = staff_skill_no;
	}

	@Override
	public String toString() {
		return "ERPVO [staff_no=" + staff_no + ", staff_name=" + staff_name + ", gender=" + gender + ", religion_code="
				+ religion_code + ", religion_name=" + religion_name + ", before_graduate_day=" + before_graduate_day
				+ ", after_graduate_day=" + after_graduate_day + ", graduate_day=" + graduate_day + ", jumin_no="
				+ jumin_no + ", school_code=" + school_code + ", school_name=" + school_name + ", skill_code="
				+ skill_code + ", skill_name=" + skill_name + ", staff_skill_no=" + staff_skill_no + "]";
	}

	
	
}
