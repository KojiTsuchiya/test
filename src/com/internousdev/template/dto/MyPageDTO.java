package com.internousdev.template.dto;

public class MyPageDTO {
	private String itemName;
	private String totalPrice;
	private String totalCount;
	private String payment;
	/**
	 * itemNameを取得します。
	 * @return itemName
	 */
	public String getItemName() {
	    return itemName;
	}
	/**
	 * itemNameを設定します。
	 * @param itemName itemName
	 */
	public void setItemName(String itemName) {
	    this.itemName = itemName;
	}
	/**
	 * totalPriceを取得します。
	 * @return totalPrice
	 */
	public String getTotalPrice() {
	    return totalPrice;
	}
	/**
	 * totalPriceを設定します。
	 * @param totalPrice totalPrice
	 */
	public void setTotalPrice(String totalPrice) {
	    this.totalPrice = totalPrice;
	}
	/**
	 * totalCountを取得します。
	 * @return totalCount
	 */
	public String getTotalCount() {
	    return totalCount;
	}
	/**
	 * totalCountを設定します。
	 * @param totalCount totalCount
	 */
	public void setTotalCount(String totalCount) {
	    this.totalCount = totalCount;
	}
	/**
	 * paymentを取得します。
	 * @return payment
	 */
	public String getPayment() {
	    return payment;
	}
	/**
	 * paymentを設定します。
	 * @param payment payment
	 */
	public void setPayment(String payment) {
	    this.payment = payment;
	}


}
