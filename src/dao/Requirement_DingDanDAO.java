package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Requirement_DingDan;

public class Requirement_DingDanDAO {
	public void addRequirement_DingDan(Connection con,Requirement_DingDan rdd,String user_id) throws Exception{
		String sql="insert into requirement_dingdan(max_price,min_price,brand,style,age,predict_time,other_require) value(?,?,?,?,?,?,?)";
		PreparedStatement preparedStatement=con.prepareStatement(sql);
		preparedStatement.setString(1, rdd.getMax_price());
		preparedStatement.setString(2, rdd.getMin_price());
		preparedStatement.setString(3, rdd.getBrand());
		preparedStatement.setString(4, rdd.getStyle());
		preparedStatement.setString(5,rdd.getAge());
		preparedStatement.setString(6, rdd.getPredict_time());
		preparedStatement.setString(7,rdd.getOther_require());
		System.out.println("!");
		preparedStatement.executeUpdate();
		
		sql="SELECT MAX(require_id) FROM requirement_dingdan";
		preparedStatement=con.prepareStatement(sql);
		ResultSet rs=preparedStatement.executeQuery();
		rdd.setRequire_id(rs.getInt("require_id"));
		System.out.println("!!");
		
		sql="insert into buyer_requirementconnect value(?,?)";
		preparedStatement=con.prepareStatement(sql);
		preparedStatement.setString(1, user_id);
		preparedStatement.setInt(2, rdd.getRequire_id());
		System.out.println("!!!");
		
	}
}
