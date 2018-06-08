package model;

import java.util.Vector;

public class Car {
	private String car_id;
	private String order_id;
	private float price;
	private String brand;
	private String style;
	private String age;
	private String mile;
	private Vector<Image> imageList=new Vector<Image>();
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
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
	public Vector<Image> getImageList() {
		return imageList;
	}
	public void setImageList(Vector<Image> imageList) {
		this.imageList = imageList;
	}
}
