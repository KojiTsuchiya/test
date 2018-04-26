package com.internousdev.template.action;
import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.UserCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	public Map<String,Object>session;

	private UserCreateCompleteDAO userCreateCompleteDAO = new UserCreateCompleteDAO();

	public String execute() throws SQLException{
		userCreateCompleteDAO.cerateUser(session.get("loginUserId").toString(),
				session.get("loginPassword").toString(),
				session.get("userName").toString());

		String result = SUCCESS;

		return result;
	}

	/**
	 * loginUserIdを取得します。
	 * @return loginUserId
	 */
	public String getLoginUserId() {
	    return loginUserId;
	}

	/**
	 * loginUserIdを設定します。
	 * @param loginUserId loginUserId
	 */
	public void setLoginUserId(String loginUserId) {
	    this.loginUserId = loginUserId;
	}

	/**
	 * loginPasswordを取得します。
	 * @return loginPassword
	 */
	public String getLoginPassword() {
	    return loginPassword;
	}

	/**
	 * loginPasswordを設定します。
	 * @param loginPassword loginPassword
	 */
	public void setLoginPassword(String loginPassword) {
	    this.loginPassword = loginPassword;
	}

	/**
	 * userNameを取得します。
	 * @return userName
	 */
	public String getUserName() {
	    return userName;
	}

	/**
	 * userNameを設定します。
	 * @param userName userName
	 */
	public void setUserName(String userName) {
	    this.userName = userName;
	}

	/**
	 * sessionを取得します。
	 * @return session
	 */
	public Map<String,Object> getSession() {
	    return session;
	}

	/**
	 * sessionを設定します。
	 * @param session session
	 */
	public void setSession(Map<String,Object> session) {
	    this.session = session;
	}

}
