package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.template.dto.MyPageDTO;
import com.internousdev.template.util.DBConnector;

public class MyPageDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection conn = dbConnector.getConnection();
	private MyPageDTO myPageDTO = new MyPageDTO();

	public MyPageDTO getMyPageUserInfo(String item_transaction_id,String user_master_id)
			throws SQLException{
		String sql = "SELECT iit.item_name,ubit.total_price,ubit.total_count,ubit.pay FROM user_buy_item_transaction ubit LEFT JOIN item_info_transaction iit ON ubit.item_transaction_id = iit.id WHERE ubit.item_transaction_id = ? AND ubit.user_master_id = ? ORDER BY ubit.insert_date DESC";

		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, user_master_id);
			ResultSet rs = ps.executeQuery();

			if(rs.next()){
				myPageDTO.setItemName(rs.getString("item_name"));
				myPageDTO.setTotalPrice(rs.getString("totalprice"));
				myPageDTO.setTotalCount(rs.getString("totalcount"));
				myPageDTO.setPayment(rs.getString("pay"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally{
			conn.close();
		}
		return myPageDTO;
	}

	public int buyItemHistoryDelete(String item_transaction_id,String user_master_id) throws SQLException{
		String sql = "DELETE FROM user_buy_item_transaction WHERE item_transaction_id = ? AND user_master_id = ?";
		PreparedStatement ps;
		int result = 0;

		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1, item_transaction_id);
			ps.setString(2, user_master_id);

			result = ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		return result;
	}

}
