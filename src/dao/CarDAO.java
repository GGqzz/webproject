package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Car;

public class CarDAO {
	public void addCar(Connection connection,Car car,String user_id){
		try {
			String sql="insert into car(price,brand,style,age,mile) value(?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, car.getPrice());
			preparedStatement.setString(2, car.getBrand());
			preparedStatement.setString(3, car.getStyle());
			preparedStatement.setString(4, car.getAge());
			preparedStatement.setString(5, car.getMile());
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
}
