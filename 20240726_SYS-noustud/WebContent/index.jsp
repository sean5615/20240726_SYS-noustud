<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="IE=10.000" http-equiv="X-UA-Compatible">
<title>教務行政資訊系統</title>
<link href="include/css/style2.css" rel="stylesheet" type="text/css" >
<link href="include/css/component.css" rel="stylesheet" type="text/css" />
<script src="include/js/jquery-3.2.1.min.js" type="text/javascript"></script>

<!-- Bootstrap  -->
<link rel="stylesheet" href="include/css/bootstrap.min.css">
<link rel="stylesheet" href="include/css/bootstrap-theme.min.css">
<script src="include/js/bootstrap.min.js"></script>
<!-- Bootstrap end -->

<script type="text/javascript" src="../../include/js/Base.js"></script>
<script type="text/javascript" src="../../include/js/FormEvent.js"></script>
<script type="text/javascript" src="../../include/js/Form.js"></script>
<script>
	function page_init(){
		getData();
	}

	function getData(){
		$.ajax({
			type: "post",
			url: "/admin/index/index_01c1",
			data: $('#QUERY').serialize(),
			success: function (data) {
				document.getElementById("newsData").innerHTML = data.data[0].DATA;
			},
			error: function (data) {
				console.log(data);
			}
		});
	}
</script>
<style>
.QueryLink a{
	text-decoration: none;
	color:#fff1a7;
}
.QueryLink a:hover, .QueryLink a:focus {
	text-decoration: none;
	color:yellow;
}
</style>
</head>
<body>

<!-- 頂端資訊 -->
<div class="top_menu ">
  <div class="container rbg01">
	<div class="col-xs-12 ">
	  <div class="pull-right"><a target="_blank" href="https://www.nou.edu.tw/">大學部首頁</a> | <a target="_blank" href="https://jc.nou.edu.tw/">專科部首頁</a> | <a target="_blank" href="https://studadm.nou.edu.tw/">教務處網頁</a></div>
	  </div>
	</div>
  <div style="clear:both;"></div>
</div>
<!-- 頂端資訊 end --> 

<!-- logo_bar -->
<div class="notice">
  <div class="container rbg02">
	<div  class="col-xs-12 ">
	  <div class="col-xs-8 "><img src="images/logo2.png" class="img-responsive"> </div>
	  <div class="col-xs-4 ">
		<!-- <div class="bulletin"> -->
		  <div class="title_h1">系統公告</div>
			<div id="newsData">
			</div>
		  </div>
	  </div>
	</div>
  </div>
</div>
<!-- logo_bar end --> 

<!-- 內容 -->
<div class="container">
   <div class="col-xs-12">

	<!-- 登入 -->
	<div class="col-xs-5">
	  <input type="button"  value="登入" class="btn bg_orange2 btn-bblg" onclick="location.href='/home/home00/index';" />
	  <ul>
		<!-- <li>若無法登入或登入畫面無選單目錄，請 [ <a href="/home/home00/self_login">按此連結</a> ]</li>-->
		<!--<li>請使用空大信箱帳號 <span class="text-danger">不用加@webmail.nou.edu.tw</span>，密碼預設為身分證字號(英文大寫)</li>-->
		<li><font color=blue><b>本系統建議使用Chrome為最佳瀏覽器。</b></font></li>
		<li>系統操作問題請參閱線上<a target="_blank" href="https://help-n.nou.edu.tw">操作手冊</a>或與我們聯繫：<br>服務電話：(02)2282-9355轉5625 (請於上班時間洽詢)<br>服務信箱：noumis@mail.nou.edu.tw</li>
		<li><a target="_blank" href="/query.jsp">校友(曾空大畢業未再入學者)查詢</a></li>
		<li><a target="_blank" href="https://noustud.nou.edu.tw/shared_tmp/sys/help/error_times_note.pdf">密碼錯誤處理方式，請參考。</a></li>
		<li><a target="_blank" href="https://sspr.nou.edu.tw/sspr/public/forgottenpassword">忘記密碼請按此連結。</a></li>
	  </ul>
	</div>
	<!-- 登入 end -->

	<!-- item -->
	<div class="col-xs-7 "> 
	<p>&nbsp;</p>
	  <div  class="row">
		<div class="col-xs-3"><a target="_blank" href="https://help-n.nou.edu.tw/APP/"><img src="images/img001.jpg" class="img-responsive img-thumbnail"></a>
		  <div class="bba">空大APP</div>
		</div>
		<div class="col-xs-3 "><a target="_blank" href="https://uu.nou.edu.tw/"><img src="images/img002.jpg"  class="img-responsive img-thumbnail"></a>
		  <div class="bba">數位學習平台</div>
		</div>
		<div class="col-xs-3 "><a target="_blank" href="http://vc.nou.edu.tw/"><img src="images/img003.jpg"  class="img-responsive img-thumbnail"></a>
		  <div class="bba">跨中心網路面授</div>
		</div>
		<div class="col-xs-3 "><img src="images/img004.jpg" class="img-responsive img-thumbnail">
		  <div class="bba">歷屆考題</div>
		</div>
		<div class="col-xs-3 "><a target="_blank" href="https://www.nou.edu.tw/"><img src="images/img005.jpg"  class="img-responsive img-thumbnail"></a>
		  <div class="bba">空大首頁</div>
		</div>
		<div class="col-xs-3 "><a target="_blank" href="https://studadm.nou.edu.tw/"><img src="images/img007.jpg"  class="img-responsive img-thumbnail"></a>
		  <div class="bba">教務處</div>
		</div>
		<div class="col-xs-3 "><a target="_blank" href="https://webmail.nou.edu.tw/"><img src="images/img009.jpg"  class="img-responsive img-thumbnail"></a>
		  <div class="bba">教師學生信箱</div>
		</div>		
		<div class="col-xs-3 "><a target="_blank" href="https://lt.nou.edu.tw/download.html"><img src="images/img008.jpg" class="img-responsive img-thumbnail"></a>
		  <div class="bba">電腦環境設定</div>
		</div>
	  </div>
	</div>
	<!-- item end -->
</div>
</div>
<!-- 內容 end -->

<form name="QUERY" method="post" id="QUERY">	
	<input type=hidden name="control_type" value="GET_AUTT030" />
	<input type=hidden name="KIND" value="1" />
</form>
</body>
</html>
<script>
	document.write ("<font color=\"white\">" + document.lastModified + "</font>");
	window.addEventListener("load", page_init);	
</script>