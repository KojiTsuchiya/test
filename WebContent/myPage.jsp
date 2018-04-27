<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
  <meta http-equiv="Content-Style-Type" content="text/css"/>
  <meta http-equiv="Content-Script-Type" content="text/script"/>
  <meta http-equiv="imagetoolbar" content="no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <title>MyPage画面</title>

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
  height:800px;
  margin:0 auto;
  margin-top:130px;
  margin-bottom:200px;
  }

  #top{
  height:250px;
  margin-top:20px;
  margin-bottom:30px;
  border-bottom:solid 5px black;
  text-align:center;
  font-size:30px;
  font-family:'arial black';
  letter-spacing:2px;
  }

  #btn{
  clear:both;
  margin-top:20px;
  }

  #btn div{
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
    <div id="pr">
    </div>
  </div>
  <div id="main">
    <div id="main-cont">
    <div id="top">
      <p>MyPage</p>
    </div>
    <div>
      <s:if test="session.message == ">
        <h3>ご購入情報は以下になります。</h3>
        <table>
          <tr>
            <td>商品名</td>
            <td><s:property value="session.buyItem_name"/></td>
          </tr>
          <tr>
            <td>値段</td>
            <td>
              <s:property value="session.total_price"/>
                <span>円</span>
            </td>
          </tr>
          <tr>
            <td>購入個数</td>
            <td>
              <s:property value="session.total_count"/>
                <span>個</span>
            </td>
          </tr>
          <tr>
            <td>支払い方法</td>
            <td><s:property value="session.total_payment"/></td>
          </tr>
        </table>
        <s:form action="MyPageAction">
          <input type="hidden" name="deleteFlg" value="1">
          <s:submit value="削除" method="delete"/>
        </s:form>
      </s:if>
      <s:if test="session.message!=null">
        <h3><s:property value="session.message"/></h3>
      </s:if>
        <div>
          <br>
          <span>前画面に戻るには</span>
          <a href='<s:url action="HomeAction"/>'>ログアウト</a>
          <span>をお願いします</span>
        </div>
    </div>
    </div>
  </div>

  <div id="footer">
    <div id="pr">
    </div>
  </div>


</body>
</html>