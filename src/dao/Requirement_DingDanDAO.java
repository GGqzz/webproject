package dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import model.DingDan;
import model.Requirement_DingDan;

public class Requirement_DingDanDAO {
	public void addRequirement_DingDan(Connection con,Requirement_DingDan rdd,String user_id) throws Exception{
		String sql="insert into requirement_dingdan(max_price,min_price,brand,style,age,predict_time,other_require) value(?,?,?,?,?,?,?)";
		PreparedStatement preparedStatement=con.prepareStatement(sql);
		preparedStatement.setString(1, rdd.getMax_price());
		preparedStatement.setString(2, rdd.getMin_price());
		preparedStatement.setString(3, rdd.getBrand());
		preparedStatement.setString(4, rdd.getStyle());
		preparedStatement.setString(5, rdd.getAge());
		preparedStatement.setString(6, rdd.getPredict_time());
		preparedStatement.setString(7, rdd.getOther_require());
		preparedStatement.executeUpdate();
		
		sql="select * FROM requirement_dingdan";
		preparedStatement=con.prepareStatement(sql);
		ResultSet rs=preparedStatement.executeQuery();
		rs.last();
		//System.out.println(rs.getInt("require_id"));
		rdd.setRequire_id(rs.getInt("require_id"));
		
		
		sql="insert into buyer_requirementconnect(user_id,require_id,require_state) value(?,?,?)";
		preparedStatement=con.prepareStatement(sql);
		preparedStatement.setString(1, user_id);
		preparedStatement.setInt(2, rdd.getRequire_id());
		preparedStatement.setString(3, "µÈ´ýÂô¼Ò");
		preparedStatement.executeUpdate();
		preparedStatement.close();
		
	}
	
	/**
	 * @param connection
	 * @param user_id
	 * @return
	 */
	public Vector<Requirement_DingDan> getUserReuirementDingDanList(Connection connection,String user_id){
		Vector<Requirement_DingDan> requirement_DingDanList=new Vector<Requirement_DingDan>();
		String sql="select * from buyer_requirementconnect,requirement_dingdan where buyer_requirementconnect.require_id=requirement_dingdan.require_id and user_id='"+user_id+"'";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				Requirement_DingDan requirement_DingDan=new Requirement_DingDan();
				requirement_DingDan.setAge(rSet.getString("age"));
				requirement_DingDan.setBrand(rSet.getString("brand"));
				requirement_DingDan.setStyle(rSet.getString("style"));
				requirement_DingDan.setMax_price(rSet.getString("max_price"));
				requirement_DingDan.setMin_price(rSet.getString("min_price"));
				requirement_DingDan.setOther_require(rSet.getString("other_require"));
				requirement_DingDan.setRequireState(rSet.getString("require_state"));
				requirement_DingDan.setRequire_id(rSet.getInt("require_id"));
				requirement_DingDanList.add(requirement_DingDan);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return requirement_DingDanList;
	}
	
	public void deleteUserRequirement(Connection connection,String require_id) {
		String sql1="DELETE FROM requirement_dingdan WHERE require_id ="+require_id;
		String sql2="DELETE FROM buyer_requirementconnect WHERE require_id ="+require_id;
		try {
			//System.out.println(require_id);
			Statement statement=connection.createStatement();
			statement.executeUpdate(sql1);
			statement.executeUpdate(sql2);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
