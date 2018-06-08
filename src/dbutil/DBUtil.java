package dbutil;

import java.sql.*;

import model.User;


public class DBUtil {
	private static String URL="jdbc:mysql://localhost:3306/secondhand_mall";
	private static String DBDRIVER="com.mysql.jdbc.Driver";
	private static String USERNAME="root";
	private static String PASSWORD="8230753";
	
	/**
	 * 获取数据库连接
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnection() throws Exception{
		Class.forName(DBDRIVER);
		Connection result=null;
		result=DriverManager.getConnection(URL,USERNAME,PASSWORD);
		return result;
	}
	
	/**
	 * 关闭数据库连接
	 * @param connection
	 * @throws Exception
	 */
	public static void closeConnection(Connection connection) throws Exception{
		if(connection!=null) {
			connection.close();
		}
	}
	
	/**
	 * 查询数据库是否拥有该用户，用于用户名重复检测
	 * @param connection
	 * @param userName
	 * @return false:用户名重复; true:用户名没有重复
	 * @throws Exception
	 */
	public static boolean checkUser(Connection connection,String userName) throws Exception{
		PreparedStatement preparedStatement=null;
		String sql="select * from user where user_id=?";
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, userName);
		if(!preparedStatement.executeQuery().next()) {
			return true;
		}
		else {
			return false;
		}
	}
	
	/**
	 * 检测用户名和密码是否和数据库中对应,并返回User实例
	 * @param connection
	 * @param userName
	 * @param password
	 * @throws Exception
	 */
	public static User login(Connection connection,String userName,String password) throws Exception{
		PreparedStatement preparedStatement=null;
		String sql="select * from user where user_id=? and password=?";
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1,userName);
		preparedStatement.setString(2,password);
		ResultSet rs=preparedStatement.executeQuery();
		if(!rs.next()) {
			rs.close();
			connection.close();
			return null;
		}
		else {
			User user=new User();
			user.setUserId(rs.getString("user_id"));
			user.setPassword(rs.getString("password"));
			user.setMail(rs.getString("mail"));
			user.setAddress(rs.getString("address"));
			user.setTelephoneNumber(rs.getString("telephone_number"));
			rs.close();
			connection.close();
			return user;
		}
	}
}
