package dao;

import java.sql.Statement;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import model.Car;
import model.User;

public class CarDAO {
	public void addCar(Connection connection,Car car,String user_id){
		try {
			String sql="insert into car(price,brand,style,age,mile,buy_time) value(?,?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, car.getPrice());
			preparedStatement.setString(2, car.getBrand());
			preparedStatement.setString(3, car.getStyle());
			preparedStatement.setString(4, car.getAge());
			preparedStatement.setString(5, car.getMile());
			preparedStatement.setString(6, car.getBuy_Time());
			preparedStatement.executeUpdate();
			
			sql="select * FROM car";
			preparedStatement=connection.prepareStatement(sql);
			ResultSet rs=preparedStatement.executeQuery();
			rs.last();
			car.setCar_id(rs.getInt("car_id"));
			
			sql="insert into dingdan(user_id,car_id,dingdan_state) value(?,?,?)";
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);
			preparedStatement.setInt(2, car.getCar_id());
			preparedStatement.setString(3,"在售");
			preparedStatement.executeUpdate();
			preparedStatement.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Vector<Car> getCarList(Connection connection,String brand,String style,float minPrice,float maxPrice,String minAge,String maxAge){
		Vector<Car> carList=new Vector<Car>();
		//System.out.println(brand+" "+style+" "+minPrice+" "+maxPrice+" "+minPrice+" "+maxPrice+" "+minAge+" "+maxAge);
		String sql="select * from car ";
		int flag=0;
		if(brand.equals("不限")&&style.equals("不限")&&minPrice==0&&maxPrice==0&&minAge.equals("0")&&maxAge.equals("0")) {
			sql+="order by car_id";
		}
		else {
			sql+=" where";
			if(!brand.equals("不限")) {
				sql+=" brand='"+brand+"'";
				flag=1;
			}
			if(!style.equals("不限")) {
				if(flag==1) {
					sql+=" and";
				}
				sql+=" style='"+style+"'";
				flag=1;
			}
			if(minPrice!=0) {
				if(flag==1) {
					sql+=" and";
				}
				sql+=" price between "+minPrice+" and "+maxPrice;
				flag=1;
			}
			if(!minAge.equals("0")||!maxAge.equals("0")) {
				if(flag==1) {
					sql+=" and";
				}
				sql+=" cast(age as signed) between '"+minAge+"' and '"+maxAge+"'";
				flag=1;
			}
		}
		//System.out.println(sql);						
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				Car car=new Car();
				car.setAge(rSet.getString("age"));
				car.setBrand(rSet.getString("brand"));
				car.setStyle(rSet.getString("style"));
				car.setPrice(rSet.getString("price"));
				car.setMile(rSet.getString("mile"));
				car.setBuy_Time(rSet.getString("buy_time"));
				car.setCar_id(rSet.getInt("car_id"));
				carList.add(car);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return carList;
	}
	
	public Vector<Car> getCarListSortByPrice(Connection connection){
		Vector<Car> carList=new Vector<Car>();
		String sql="select * from car order by price";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				Car car=new Car();
				car.setAge(rSet.getString("age"));
				car.setBrand(rSet.getString("brand"));
				car.setStyle(rSet.getString("style"));
				car.setPrice(rSet.getString("price"));
				car.setMile(rSet.getString("mile"));
				car.setBuy_Time(rSet.getString("buy_time"));
				car.setCar_id(rSet.getInt("car_id"));
				carList.add(car);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return carList;
	}
	
	public Vector<Car> getCarListSortByAge(Connection connection){
		Vector<Car> carList=new Vector<Car>();
		String sql="select * from car order by age";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				Car car=new Car();
				car.setAge(rSet.getString("age"));
				car.setBrand(rSet.getString("brand"));
				car.setStyle(rSet.getString("style"));
				car.setPrice(rSet.getString("price"));
				car.setMile(rSet.getString("mile"));
				car.setBuy_Time(rSet.getString("buy_time"));
				car.setCar_id(rSet.getInt("car_id"));
				carList.add(car);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return carList;
	}
	
	/**
	 * 
	 * @param connection
	 * @param user
	 * @param car
	 * @return true:是相同用户，false:不是相同用户
	 */
	public boolean isSameUser(Connection connection,User user,Car car) {
		String sql="select user_id from dingdan where car_id="+car.getCar_id();
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			if(rSet.next()) {
				if(user.getUserId().equals(rSet.getString("user_id"))) {
					//System.out.println(user.getUserId()+" "+rSet.getString("user_id"));
					return true;
				}
				else{
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void changeOrderState(Connection connection,Car car,User user,String operate) {
		String sql="UPDATE dingdan SET dingdan_state='"+operate+ "' , buyer_id='"+user.getUserId() +"' WHERE" 
		+" car_id="+car.getCar_id();
		try {
			Statement preparedStatement=connection.createStatement();
			preparedStatement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Car searchCarByID(Connection connection,int car_id) {
		Car car=new Car();
		String sql="select * from car where car_id="+car_id;
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				car.setAge(rSet.getString("age"));
				car.setBrand(rSet.getString("brand"));
				car.setStyle(rSet.getString("style"));
				car.setPrice(rSet.getString("price"));
				car.setMile(rSet.getString("mile"));
				car.setBuy_Time(rSet.getString("buy_time"));
				car.setCar_id(rSet.getInt("car_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return car;
	}
	
	public Vector<Car> getCarListByUserId(Connection connection,String user_id){
		Vector<Car> carList=new Vector<Car>();
		String sql="select * from car,dingdan where car.car_id=dingdan.car_id and user_id='"+user_id+"'";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				Car car=new Car();
				car.setAge(rSet.getString("age"));
				car.setBrand(rSet.getString("brand"));
				car.setStyle(rSet.getString("style"));
				car.setPrice(rSet.getString("price"));
				car.setMile(rSet.getString("mile"));
				car.setBuy_Time(rSet.getString("buy_time"));
				car.setCar_id(rSet.getInt("car_id"));
				carList.add(car);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return carList;
	}
	
	public void deleteCar(Connection connection,String car_id) {
		String sql="DELETE FROM car WHERE car_id ="+car_id;
		try {
			//System.out.println(require_id);
			Statement statement=connection.createStatement();
			statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
