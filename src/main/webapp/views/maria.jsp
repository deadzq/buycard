<%--
  Created by IntelliJ IDEA.
  User: SeeClanUkyo
  Date: 2018/07/13
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>展示数据库查询信息--MariaDB的追加使用(实际使用的是PostgreSQL)</title>
</head>
<body>
	<p>第一次在linux中安装的是MariaDB,当时MySQL好像闭源了.</p>
	<br>
	<p>使用了一段时间后,开始使用其他的数据库,但对MariaDB数据库名称的取名之中的故事有所感想.</p>
	<br>
	<p>随后在做一个数据库查询系统的雏形,继续使用了Maria<-+SQLManager,即MariaSQLManager</p>
	<p>Please input a new query sql statement.</p>
	<br>


	<!-- <select name="dbType" idonchange="dbSelect(this.value)">
			<option value="">--请选择数据库类型--</option>
			<option value="oracle">oracle</option>
			<option value="postgres">postgreSQL</option>
		</select> 
		<span id="dbTag"></span> -->

	<form name="formSQL">

		<span id="dbTag"></span> <br> 
		<input type="radio" name="dbType"
			value="oracle" onchange="dbChange(this.value)" />: oracle</br> 
		<input type="radio" name="dbType" value="postgreSQL"
			onchange="dbChange(this.value)" />: postgreSQL</br> 
		<input type="radio" name="dbType" value="MySQL"
			onchange="dbChange(this.value)" />: MySQL</br>
			</br>
		<!-- input中name属性必须存在 -->
		<input type="text" name="web_sql" id="web_sql"
			onkeypress="InputkeyPressFunc(this.value)"
			onfocus="focusInput(this.value)" onblur="sqlSubmitFunc()" /> <span
			id="sp2"></span><br> 
			<input type="button" value="查询"
			onclick="sqlSubmitFunc()">
	</form>
	<span id="spAll"></span>

	
	<hr>
	<span id="showTag"></span>
	<span id="showTheResult"></span>

	<mark>待加强</mark>
	<br> 1.增加JS对SQL语句的判定完善性
	<br> 2.使用JSON,AJAX传递数据
	<br> 3.结合MyBatis使用
</body>
<script src="../../../resources/static/js/jquery.min.js"></script>
<script src="js/index.js"></script>
</html>
