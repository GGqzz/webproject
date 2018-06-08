package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;

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
}
