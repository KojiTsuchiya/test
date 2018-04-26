package com.internousdev.template.dto;

public class BuyItemDTO {

	private String buyIteminfo;
	private int id;
	private String itemName;
	private String itemPrice;
	/**
	 * buyIteminfoを取得します。
	 * @return buyIteminfo
	 */
	public String getBuyIteminfo() {
	    return buyIteminfo;
	}
	/**
	 * buyIteminfoを設定します。
	 * @param buyIteminfo buyIteminfo
	 */
	public void setBuyIteminfo(String buyIteminfo) {
	    this.buyIteminfo = buyIteminfo;
	}
	/**
	 * idを取得します。
	 * @return id
	 */
	public int getId() {
	    return id;
	}
	/**
	 * idを設定します。
	 * @param id id
	 */
	public void setId(int id) {
	    this.id = id;
	}
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
	 * itemPriceを取得します。
	 * @return itemPrice
	 */
	public String getItemPrice() {
	    return itemPrice;
	}
	/**
	 * itemPriceを設定します。
	 * @param itemPrice itemPrice
	 */
	public void setItemPrice(String itemPrice) {
	    this.itemPrice = itemPrice;
	}

}
