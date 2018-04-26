package com.internousdev.template.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{
	private int stock;
	private String pay;
	private Map<String,Object>session;
	private String result;

	public String execute(){
		result = SUCCESS;

		session.put("stock", stock);
		int intStock = Integer.parseInt(session.get("stock").toString());
		int intPrice = Integer.parseInt(session.get("buyItem_price").toString());

		session.put("buyItem_price",intStock * intPrice);
		String payment;
		
		if(pay.equals("1")) {
			payment = "現金払い";
			session.put("pay",payment);
		} else {
			payment = "クレジットカード";
			session.put("pay",payment);
		}
		return result;
	}

	/**
	 * stockを取得します。
	 * @return stock
	 */
	public int getStock() {
	    return stock;
	}

	/**
	 * stockを設定します。
	 * @param stock stock
	 */
	public void setStock(int stock) {
	    this.stock = stock;
	}

	/**
	 * payを取得します。
	 * @return pay
	 */
	public String getPay() {
	    return pay;
	}

	/**
	 * payを設定します。
	 * @param pay pay
	 */
	public void setPay(String pay) {
	    this.pay = pay;
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

	/**
	 * resultを取得します。
	 * @return result
	 */
	public String getResult() {
	    return result;
	}

	/**
	 * resultを設定します。
	 * @param result result
	 */
	public void setResult(String result) {
	    this.result = result;
	}

}
