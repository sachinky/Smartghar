package com.pojo;

import java.io.Serializable;

public class Cook implements Serializable
{
	
	private String username;
	private String name;
	private String password;
	private String email;
	private String service;
	private int ex;
	private int phone;
	private int charge;
	private int negotiable;
	private String location;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public int getEx() {
		return ex;
	}
	public void setEx(int ex) {
		this.ex = ex;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public int getNegotiable() {
		return negotiable;
	}
	public void setNegotiable(int negotiable) 
	{
		if(negotiable==1)
		     this.negotiable = negotiable;
		else
			this.negotiable = 0;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String toString()
	{
		return this.username +" " + this.email + " " + this.name; 
	}
	

}
