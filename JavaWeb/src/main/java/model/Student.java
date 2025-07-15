package model;

public class Student {
	private String name;
	private String country;
	private Integer age;
	private String level;
	
	public Student() {
		
	}
	
	public Student(String name, String country, Integer age, String level) {
		this.name = name;
		this.country = country;
		this.age = age;
		this.level = level;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
}
