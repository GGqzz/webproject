package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import model.DingDan;

public class DingDanDAO {
	public Vector<DingDan> getUserDingDan(Connection connection,String user_id){
		Vector<DingDan> dingdanList=new Vector<DingDan>();
		String sql="select * from dingdan where user_id='"+user_id+"'";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				DingDan dingDan=new DingDan();
				dingDan.setBuyer_id(rSet.getString("buyer_id"));
				dingDan.setCar_id(rSet.getInt("car_id"));
				dingDan.setUser_id(rSet.getString("user_id"));
				dingDan.setDingdan_state(rSet.getString("dingdan_state"));
				dingdanList.add(dingDan);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dingdanList;
	}
	
	public Vector<DingDan> getBuyerDingDan(Connection connection,String buyer_id){
		Vector<DingDan> dingdanList=new Vector<DingDan>();
		String sql="select * from dingdan where buyer_id='"+buyer_id+"'";
		try {
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet rSet=preparedStatement.executeQuery();
			while(rSet.next()) {
				DingDan dingDan=new DingDan();
				dingDan.setBuyer_id(rSet.getString("buyer_id"));
				dingDan.setCar_id(rSet.getInt("car_id"));
				dingDan.setUser_id(rSet.getString("user_id"));
				dingDan.setDingdan_state(rSet.getString("dingdan_state"));
				dingdanList.add(dingDan);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dingdanList;
	}
	
	public void closeOrder(Connection connection,String car_id) {
		String sql="update dingdan set buyer_id=null,dingdan_state='дкЪл' where car_id="+car_id;
		try {
			Statement preparedStatement=connection.createStatement();
			preparedStatement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteOrder(Connection connection,String car_id) {
		String sql="DELETE FROM dingdan WHERE car_id ="+car_id;
		try {
			//System.out.println(require_id);
			Statement statement=connection.createStatement();
			statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
