package com.internousdev.template.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.template.util.DBConnector;
import com.internousdev.template.util.DateUtil;

public class UserCreateCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection conn = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql = "INSERT INTO login_user_transaction(login_id,login_pass,user_name,insert_date)VALUES(?,?,?,?)";

	public void cerateUser(String loginUserId,String loginUserPassword,String userName)throws
	SQLException{
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,loginUserId);
			ps.setString(2, loginUserPassword);
			ps.setString(3, userName);
			ps.setString(4, dateUtil.getDate());

			ps.execute();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

}
