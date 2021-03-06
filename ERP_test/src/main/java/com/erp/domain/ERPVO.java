package com.erp.domain;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;

public class ERPVO implements Serializable{

	private int staff_no;
	private String staff_name;
	private int religion_code;
	private String religion_name;
	private String before_graduate_day;
	private String after_graduate_day;
	private String graduate_day;
	private String jumin_no;
	private String[] gender;
	private int school_code;
	private String[] school_codes;
	private int skill_code;
	private String [] skill_codes; 
	
	public ERPVO(){}

	public ERPVO(int staff_no, String staff_name, int religion_code, String religion_name, String before_graduate_day,
			String after_graduate_day, String graduate_day, String jumin_no, String[] gender, int school_code,
			String[] school_codes, int skill_code, String[] skill_codes) {
		super();
		this.staff_no = staff_no;
		this.staff_name = staff_name;
		this.religion_code = religion_code;
		this.religion_name = religion_name;
		this.before_graduate_day = before_graduate_day;
		this.after_graduate_day = after_graduate_day;
		this.graduate_day = graduate_day;
		this.jumin_no = jumin_no;
		this.gender = gender;
		this.school_code = school_code;
		this.school_codes = school_codes;
		this.skill_code = skill_code;
		this.skill_codes = skill_codes;
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

	public String[] getGender() {
		return gender;
	}

	public void setGender(String[] gender) {
		this.gender = gender;
	}

	public int getSchool_code() {
		return school_code;
	}

	public void setSchool_code(int school_code) {
		this.school_code = school_code;
	}

	public String[] getSchool_codes() {
		return school_codes;
	}

	public void setSchool_codes(String[] school_codes) {
		this.school_codes = school_codes;
	}

	public int getSkill_code() {
		return skill_code;
	}

	public void setSkill_code(int skill_code) {
		this.skill_code = skill_code;
	}

	public String[] getSkill_codes() {
		return skill_codes;
	}

	public void setSkill_codes(String[] skill_codes) {
		this.skill_codes = skill_codes;
	}

	@Override
	public String toString() {
		return "ERPVO [staff_no=" + staff_no + ", staff_name=" + staff_name + ", religion_code=" + religion_code
				+ ", religion_name=" + religion_name + ", before_graduate_day=" + before_graduate_day
				+ ", after_graduate_day=" + after_graduate_day + ", graduate_day=" + graduate_day + ", jumin_no="
				+ jumin_no + ", gender=" + Arrays.toString(gender) + ", school_code=" + school_code + ", school_codes="
				+ Arrays.toString(school_codes) + ", skill_code=" + skill_code + ", skill_codes="
				+ Arrays.toString(skill_codes) + "]";
	}

	
	
	
}
