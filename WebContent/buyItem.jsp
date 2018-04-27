<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
  <meta http-equiv="Content-Style-Type" content="text/css"/>
  <meta http-equiv="Content-Script-Type" content="text/javascript"/>
  <meta http-equiv="imagetoolbar" content="no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <title>buyItem画面</title>

  <style type="text/css">

  body{
  margin:0;
  padding:0;
  width:100%;
  line-height:1;
  letter-spacing:1px;
  font-family:sans-serif;
  font-size:12px;
  color:#333;
  background:#fff;
  }

  #header{
  position:absolute;
  top:0px;
  left:0px;
  width:100%;
  height:100px;
  background-color:black;
  }

  #header-logo{
  float:left;
  line-height:100px;
  padding-left:40px;
  font-family:'arial black';
  font-size:60px;
  color:white;
  }

  #header ul{
  float:right;
  line-height:80px;
  }

  #header ul li{
  float:left;
  list-style-type:none;
  padding-right:50px;
  font-family:'arial black';
  font-size:20px;
  color:white;
  }

  #main{
  clear:both;
  }

  #main-cont{
  width:95%;
  height:600px;
  margin:0 auto;
  margin-top:130px ;
  }

  #top{
  height:200px;
  line-height:200px;
  margin-top:20px;
  margin-bottom:30px;
  border-bottom:solid 5px black;
  text-align:center;
  font-size:30px;
  font-family:'arial black';
  letter-spacing:2px;
  }

  table{
  text-align:center;
  margin:0 auto;
  }

  #Item{
  clear:both;
  margin-top:20px;
  }

  #Item div{
  text-align:center;
  font-size:20px;
  }

  a.bt-samp31{
  margin:0 auto;
  display: block;
  text-decoration: none;
  height:35px;
  width: 120px;
  line-height: 37px;
  text-align: center;
  color: black;
  border:solid 1px black;
  -webkit-transition: 0.3s;
  -moz-transition: 0.3s;
  -o-transition: 0.3s;
  -ms-transition: 0.3s;
  transition: 0.3s;
  border-radius:10px;
  }

  a.bt-samp31:hover{
  background: #2bb6c1;
  color: #fff;
  }

  #fotter{
  position:fixed;
  bottom:0px;
  left:0xp;
  width:100%;
  height:100px;
  background-color:black;
  }

  #fotter-menu li{
  float:left;
  padding-right:50px;
  list-style:none;
  line-height:80px;
  font-family:'arial black';
  font-size:20px;
  color:white;
  }

  #fotter a{
  color:white;
  text-decoration: none;
  }

  </style>
  </head>
  <body>
    <div id="header">
      <div id="header-logo">Book Shopping</div>
    </div>

    <div id="main">
      <div id="main-cont">
      <div id="top">
        <h1>BuyItem</h1>
      </div>
      <div id="Item">
      <s:form action="BuyItemAction">
        <table>
          <tr>
            <td>
              <span>商品名</span>
            </td>
            <td>
              <s:property value="session.buyItem_name"/>
            </td>
          </tr>
          <tr>
            <td>
              <span>値段</span>
            </td>
            <td>
              <s:property value="session.buyItem_name"/>
            </td>
          </tr>
          <tr>
            <td>
              <span>値段</span>
            </td>
            <td>
              <s:property value="session.buyItem_price"/>
                <span>円</span>
            </td>
          </tr>
          <tr>
            <td>
              <span>在庫</span>
            </td>
            <td>
              <select name="stock">
                <option value="1" selected="selected">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>
              <span>支払い方法</span>
            </td>
            <td>
              <input type="radio" name="pay" value="1" checked="checked">現金払い
              <input type="radio" name="pay" value="2">クレジットカード
            </td>
          </tr>
          <tr>
            <td>
              <div><s:submit  value="購入"/></div>
            </td>
          </tr>
        </table>
      </s:form>
      </div>
      </div>
    </div>

  <div id="fotter">
    <div id="fotter-menu">
    <ul>
      <li><a href='home.jsp'>ホーム</a></li>
      <li>商品一覧</li>
      <li>マイページ</li>
      <li><a href='<s:url action="HomeAction"/>'>ログイン</a></li>
    </ul>
    </div>
  </div>

  </body>
  </html>