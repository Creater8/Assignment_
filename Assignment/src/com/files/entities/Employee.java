package com.files.entities;

public class Employee {

	private int id;
	private String name;
	private String password;
	private Float salary;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Float getSalary() {
		return salary;
	}
	public void setSalary(Float salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "EmployeeDao [id=" + id + ", name=" + name + ", password=" + password + ", salary=" + salary + "]";
	}
	

}
