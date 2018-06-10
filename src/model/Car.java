package model;

public class Car {
	private int car_id;
	private String price;
	private String brand;
	private String style;
	private String age;
	private String mile;
	private String buyTime;
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public void setBuy_Time(String buyTime) {
		this.buyTime = buyTime;
	}
	public String getBuy_Time() {
		return buyTime;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMile() {
		return mile;
	}
	public void setMile(String mile) {
		this.mile = mile;
	}
}
