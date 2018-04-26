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
  <title>Login画面</title>

  <style type="text/css">

  /*=====TAG LAYOUT======*/
  body{
  margin:0;
  padding:0;
  line-height:1.6;
  letter-spacing:1px;
  font-family:sans-serif;
  font-size:12px;
  color:#333;
  background:#fff;
  }

  table{
  text-align:center;
  margin:0 auto;
  }

  /*=====ID LAYOUT=====*/

  #header{
  position:fixed;
  top:0px;
  left:0px;
  width:100%;
  height:100px;
  background-color:black;
  }

  #header-logo{
  position:fixed;
  top:0px;
  left:0px;
  float:left;
  width:100%;
  font-size:60px;
  font-family: 'arial black';
  color:white;
  line-height:100px;
  margin-left:40px;
  }

  #header-list{
  position:fixed;
  top:0px;
  right:0px;
  float:right;
  margin-right:40px;
  }

  #header-list li{
  list-style-type:none;
  float:left;
  font-size:15px;
  color:white;
  margin:42px 30px;
  }

  #main{
  width:100%;
  height:500px;
  text-align:center;
  margin:auto 0;
  }

  #main-title{
  font-size:60px;
  font-family: 'arial black';
  color:black;
  padding-bottom:10px;
  border-bottom:5px black solid;
  margin-top:180px;
  margin-left:25%;
  margin-right:25%;
  margin-bottom:30px;
  }

  #main div{
  text-align:center;
  }

  #main-form{
  text-align:center;
  line-height:40px;
  }

  #Logint-btn{
  margin:auto 0;
  }

  #footer{
  width:100%;
  height:80px;
  background-color:black;
  clear:both;
  }

  /*===CLASS LAYOUT===*/
  .bt-samp31{
  display: block;
  text-decoration: none;
  height:35px;
  width: 120px;
  line-height: 37px;
  text-align: center;
  margin-right:auto;
  margin-left:auto;
  color: #2bb6c1;
  border:solid 1px #2bb6c1;
  -webkit-transition: 0.3s;
  -moz-transition: 0.3s;
  -o-transition: 0.3s;
  -ms-transition: 0.3s;
  transition: 0.3s;
  }

  .bt-samp31:hover{
  background: #2bb6c1;
  color: #fff;
  }

  </style>
  </head>
  <body>
    <div id="header">
      <div id="header-logo">Book Shopping</div>
    <ul id="header-list">
      <li>新着商品</li>
      <li>商品一覧</li>
      <li>マイページ</li>
      <li>お問い合わせ</li>
    </ul>
    </div>
    <div id="main">
      <div id="main-title">
        <p>Login</p>
      </div>
      <div>
        <h3>商品を購入する際にはログインをお願いします。</h3>
        <div id="main-form">
        <s:form action="LoginAction">
          <s:textfield name="loginUserId"/>
          <s:password name="loginPassword"/>
          <div id="Login-btn"><s:submit href="#" class="bt-samp31" value="ログイン"/></div>
        </s:form>
        <br/>
          <div>
            <span>新規ユーザー登録は
              <a href='<s:url action="UserCreateAction"/>'>こちら</a>
            </span>
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