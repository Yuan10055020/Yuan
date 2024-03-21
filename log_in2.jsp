<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>取引先登録</title>

<style>
h1 {
	text-align: center; /* 將文本置中 */
}

.box {
	/*width: 50%;  設定容器寬度 */
	/*margin: 0 auto;  水平居中 */
	/*border: 0px solid #ccc;  添加邊框 */
	/*padding: 0px;  添加內邊距 */
	text-align: left; /*將內容置左 */
	background-color: rgb(230, 230, 230); /* 設置背景顏色 */
	border-radius: 5px; /* 設置圓角弧度 */
	height: 30px;
}

h3 {
	text-align: left; /* 將文本置中 */
	font-size: 24px;
}

#f_aoblue {
	color: rgb(135, 206, 250);
}

.tab_wid {
	width: 70%;
}

input[type="submit"] {
	background-color: rgb(135, 206, 250); /* 设置背景颜色 */
	color: black; /* 设置文字颜色 */
	/*padding: 10px 20px;  设置内边距 */
	border: none; /* 移除边框 */
	border-radius: 4px; /* 设置圆角 */
	width: 100px; /* 设置按钮的宽度为 100 像素 */
	height: 30px; /* 设置按钮的高度为 30 像素 */
	/*cursor: pointer;  设置鼠标样式为手型 */
}

.tab_10 {width ="10%;
	text-align: left;
}

.tab_inp {width ="90%";

}
</style>

</head>
<body>
	<h1>社内統合管理システム</h1>
	<div>
		<p style="text-align: right;">
			<a href="http://localhost:8080/webPrj/index.jsp" style="color: blue;">
				取引先管理画面へ</a><br>
		</p>
	</div>
	<div class="box">
		<h2>
			<font id="f_aoblue">■ </font> &nbsp;取引先登録
		</h2>

	</div>

	<div>
		<h3>基本情報</h3>
		<hr color=#00bfff size="2"></hr>
	</div>
	<form action="/webPrj/CompanyInsert" method="post">
		<div>
			<table class=tab_wid>
				<tr>
					<td class="tab_10">取引先名（全名）</td>
					<td class="tab_inp"><input type="text" name="log_Cname"
						style="width: 70%; height: 20px;"> &emsp;<font color=red>必填</font>
					</td>
				</tr>

				<tr>
					<td>担当者名</td>
					<td><input type="text" name="log_Tan_name"
						style="width: 70%; height: 20px;"> &emsp;<font color=red>必填</font>
					</td>
				</tr>
				<tr>
					<td>担当者mail</td>
					<td><input type="text" name="log_Mail"
						style="width: 70%; height: 20px;"></td>
				</tr>
				<tr>
					<td>担当者TEL.</td>
					<td><input type="text" name="log_Tel"
						style="width: 70%; height: 20px;"></td>
				</tr>

			</table>
		</div>

		<div style="text-align: center;">

			<input type="submit" value="登    録" style="font-size: 20px;"><br>

		</div>
	</form>
</body>
</html>