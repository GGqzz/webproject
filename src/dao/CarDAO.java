package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import model.Car;

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
			
			sql="insert into dingdan(user_id,car_id) value(?,?)";
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, user_id);
			preparedStatement.setInt(2, car.getCar_id());
			preparedStatement.executeUpdate();
			preparedStatement.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Vector<Car> getCarList(Connection connection){
		Vector<Car> carList=new Vector<Car>();
		String sql="select * from car";
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
}
