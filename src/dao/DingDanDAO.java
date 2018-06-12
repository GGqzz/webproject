package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
}
