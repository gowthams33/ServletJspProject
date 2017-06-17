package com.mvc.bean;

import java.util.List;

public class User {

	Integer id;

	// form:input - textbox
	String name;

	// form:input - textbox
	String email;

	// form:textarea - textarea
	String address;

	// form:input - password
	String password;

	// form:input - password
	String confirmPassword;

	// form:checkbox - single checkbox
	String newsletter;

	// form:checkboxes - multiple checkboxes
	List<String> framework;

	// form:radiobutton - radio button
	String sex;

	// form:radiobuttons - radio button
	Integer number;

	// form:select - form:option - dropdown - single select
	String country;

	// form:select - multiple=true - dropdown - multiple select
	List<String> skill;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getNewsletter() {
		return newsletter;
	}

	public void setNewsletter(String newsletter) {
		if(newsletter == null)
			this.newsletter = "No";
		else
			this.newsletter = "yes";
	}

	public List<String> getFramework() {
		return framework;
	}

	public void setFramework(List<String> framework) {
		this.framework = framework;
	}

	public String getSex() {
		if(sex.equals("M"))
			sex = "Male";
		else if(sex.equals("F"))
			sex = "Female";
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
		
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getCountry() {
		
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List<String> getSkill() {
		return skill;
	}

	public void setSkill(List<String> skill) {
		this.skill = skill;
	}
	
}
