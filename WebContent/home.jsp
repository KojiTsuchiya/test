<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
  <meta http-equiv="Content-Style-Type" content="text/css"/>
  <meta http-equiv="Content-Script-Type" content="text.javascript"/>
  <meta http-equiv="imagetoolbar" content="no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <title>Home画面</title>

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
  margin-top:20px;
  margin-bottom:30px;
  border-bottom:solid 5px black;
  text-align:center;
  font-size:30px;
  font-family:'arial black';
  letter-spacing:2px;
  }

  #picture{
  text-align:center;
  }

  #picture img{
  margin-right:20px;
  width:320px;
  height:200px;
  border-radius:10px;
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
  position:absolute;
  bottom:0px;
  left:0xp;
  width:100%;
  height:100px;
  background-color:black;
  }

  </style>

<body>
  <div id="header">
    <div id="header-logo">Book Shopping</div>
    <ul>
      <li>新着商品</li>
      <li>商品一覧</li>
      <li>マイページ</li>
      <li>お問い合わせ</li>
    </ul>
  </div>

  <div id="main">
    <div id="main-cont">
    <div id="top">
      <h1>Let's Read the Book!</h1>
      <p>書籍の購入のためのサイトです。</p>
    </div>
    <div id="picture">
      <img src="image/図書室1.jpg"/><img
      src="image/洋書1.jpg"/><img
      src="image/洋書2.jpg"/><img
      src="image/洋書3.jpg"/>
    </div>
    <div id="btn">
      <div><h3>こちらからログインして、商品ページへ。</h3></div>
      <a href='<s:url action="HomeAction"/>' class="bt-samp31">ログインページへ</a>
    </div>
    </div>
  </div>

  <div id="fotter">
  </div>

</body>

</html>