<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="jp.csii.dto.Company"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社内統合管理システム</title>
<style>
h1 {
	text-align: center; /* 將文本置中 OAO*/
}

.box {
	/*width: 50%;  設定容器寬度 */
	/*margin: 0 auto;  水平居中 */
	/*border: 0px solid #ccc;  添加邊框 */
	/*padding: 0px;  添加內邊距 */
	text-align: left; /* 將內容置左 */
	background-color: rgb(230, 230, 230); /* 設置背景顏色 */
	border-radius: 5px; /* 設置圓角弧度 */
	height: 30px;
}

#f_aoblue {
	color: rgb(135, 206, 250);
}

#word_sty {
	color: black;
	font-size: 14px;
}

#word_sty2 {
	color: black;
	font-size: 16px;
}

h2 {
	color: black;
	font-size: 20px;
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

#tab_tit {
	text-align: center;
	color: black;
	font-size: 16px;
	background-color: rgb(135, 206, 250);
}

.tab_wid {
	width: 100%;
}

.text_c {
	text-align: center;
}

.text_l {
	text-align: left;
}
</style>

</head>
<body>
	<%
	String str = (String) request.getAttribute("key");
	if (str == null) {
		str = "";

	}

	ArrayList<Company> al = (ArrayList<Company>) request.getAttribute("keyal");

	//String isListOrSeach = (String) request.getAttribute("isListOrSeach");
	%>




	<h1>社内統合管理システム</h1>
	<div class="box">
		<h2>
			<font id="f_aoblue">■ </font> &nbsp;取引先管理
		</h2>

	</div>

	<!-- 検索条件 &  取引先名検索-->
	<div>
		<p id="word_sty">
			■ 検索条件<br>

		</p>
		<form action="/webPrj/url002" method="get">
			&emsp;&emsp;&emsp;取引先名 :&emsp; <input type="text" name="search_name"
				value="<%=str%>" style="width: 50 px; height: 20px;"> &emsp;
			<input type="submit" value="検    索" style="font-size: 20px;"><br>
		</form>
	</div>

	<!-- 取引先一覧 -->
	<div>
		<p id="word_sty2">
			■ 取引先一覧<br>
	</div>

	<!-- 件数 & 新規登録 -->
	<div>
		<table class=tab_wid>
			<tr>
				<td width="67%" style="text-align: right;">件数:</td>
				<td width="23%" style="text-align: left; color: blue;">&nbsp;&nbsp;&nbsp;
					<%
					if (al != null && !al.isEmpty()) {
						out.println(al.size());
					} else {
						out.println("0");
					}
					%> 件
				</td>
				<td width="10%" style="text-align: center;"><a
					href="http://localhost:8080/webPrj/log_in2.jsp"
					style="color: blue;">新規登録</a></td>
			</tr>
		</table>

	</div>


	<!-- 取引先テーブル -->

	<table border="1" class=tab_wid>
		<tr id=tab_tit>
			<td width="25%">取引先名</td>
			<td width="15%">担当者名</td>
			<td width="25%">担当者メール</td>
			<td width="25%">担当者TEL.</td>
			<td width="10%">編集</td>
		</tr>
		<%
		if (al != null && !al.isEmpty()) {
			for (int i = 0; i < al.size(); i++) {
		%>
		<tr>
			<td class="text_l"><%=al.get(i).getCname()%></td>
			<td class="text_c"><%=al.get(i).getName()%></td>
			<td class="text_l"><%=al.get(i).getMail()%></td>
			<td class="text_l"><%=al.get(i).getTel()%></td>
			<td class="text_c"><a
				href="http://localhost:8080/webPrj/update2?id=<%=al.get(i).getId()%>"
				style="color: blue;">更新</a> <br> <a
				href="http://localhost:8080/webPrj/CompanyDelete?id=<%=al.get(i).getId()%>"
				style="color: blue;">削除</a></td>
		</tr>
		<%
		}
		}
		%>
	</table>

	<div>
		<p class="text_c">
			<a href="url002?search_name=<%=request.getAttribute("search_name")%>&page=${paging.indexpage-1}">&lt;&lt;</a>
			<a href="url002?search_name=<%=request.getAttribute("search_name")%>&page=${paging.page-1}">&lt;</a>
			<a><strong>第${paging.page+1}ページ/全${paging.pagenumber}ページ</strong></a>
			<a href="url002?search_name=<%=request.getAttribute("search_name")%>&page=${paging.page+1}">&gt;</a>
			<a href="url002?search_name=<%=request.getAttribute("search_name")%>&page=${paging.pagenumber-1}">&gt;&gt;</a>
		</p>



	</div>


</body>
</html>