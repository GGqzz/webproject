package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import dbutil.DBUtil;
import model.User;

/**
 * 用户添加实体类
 * @author Administrator
 *
 */
public class UserDAO {
	public void adduser(Connection connection,User user) throws Exception{
		String sql="insert into user value(?,?,?,?,?)";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, user.getUserId());
		preparedStatement.setString(2, user.getPassword());
		preparedStatement.setString(3, user.getTelephoneNumber());
		preparedStatement.setString(4, user.getMail());
		preparedStatement.setString(5,user.getAddress());
		preparedStatement.executeUpdate();
	}
	public void updateUserPassword(Connection connection ,String newPassword,String user_id) throws Exception{
		String sql="UPDATE user SET password='"+newPassword+"' where user_id='"+user_id+"'";
		Statement preparedStatement=connection.createStatement();
		preparedStatement.executeUpdate(sql);
	}
	public void updateUserInformation(Connection connection ,String newMobile,String newAddress,String newEmail,String user_id) throws Exception{
		String sql="UPDATE user SET telephone_number='"+newMobile+"' , address='"+newAddress+"' , mail='"+newEmail+"' where user_id='"+user_id+"'";
		Statement preparedStatement=connection.createStatement();
		preparedStatement.executeUpdate(sql);
	}
	public User getUserById(Connection connection,String user_id) {
		User user=new User();
		String sql="select * from user where user_id='"+user_id+"'";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			if(rSet.next()) {
				user.setAddress(rSet.getString("address"));
				user.setMail(rSet.getString("mail"));
				user.setPassword(rSet.getString("password"));
				user.setTelephoneNumber(rSet.getString("telephone_number"));
				user.setUserId(user_id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
}
