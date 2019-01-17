<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<link rel="icon" href="${pageContext.request.contextPath}/image/title.png" type="image/x-icon"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>营销系统登录</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/moban/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/moban/css/animate-custom.css" />
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script type="text/javascript">
	//设置此处的原因是每次进入界面展示一个随机的验证码，不设置则为空
	$().ready(function() {
		//createCode();
	});
	//设置一个全局的变量，便于保存验证码
	var code;
	function createCode() {
		//首先默认code为空字符串
		code = '';
		//设置长度，这里看需求，我这里设置了4
		var codeLength = 4;
		var codeV = document.getElementById('code');
		//设置随机字符
		var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C',
				'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
				'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
		//循环codeLength 我设置的4就是循环4次
		for (var i = 0; i < codeLength; i++) {
			//设置随机数范围,这设置为0 ~ 36
			var index = Math.floor(Math.random() * 36);
			//字符串拼接 将每次随机的字符 进行拼接
			code += random[index];
		}
		//将拼接好的字符串赋值给展示的Value
		codeV.value = code;
	}

	//下面就是判断是否== 的代码，无需解释
	function validate() {
		
		var name = $("#username").val();
		var password = $("#password").val();
		var requestDate = {};
		requestDate["name"] = name;
		requestDate["password"] = password;
		var str = JSON.stringify(requestDate);
		if (name == "") {
			alert("请填写登录名");
			return;
		}
		if (password == "") {
			alert("请填写密码");
			return;
		}
		$.ajax({
			type : "get",
			dataType : 'json',//默认转化对象
			async : true,
			url : "user/login", //提交到一般处理程序请求数据

			data : {
				"requestDate" : str
			},
			error : function() {
				alert("登录失败,请与管理员联系!")
			},
			success : function(data) {
				var suc = data.succ;

				if (suc == "false") {
					alert("登录失败，请确认用户名与密码");
				}else if(suc == "no_auth"){
					alert("状态不可用，请联系管理员");	
				}else {
					alert("登录成功")
					window.location.href = "user/sy.do";
				}
			}
		});
	}
</script>
</head>
<body
	style="background: #fff url(${pageContext.request.contextPath}/moban/images/bg.jpg) repeat top left;">

	<div id="container_demo">
		<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
			id="tologin"></a>
		<div id="wrapper">
			<div id="login" class="animate form">

				<h1>库存ERP进销存系统</h1>
				<p>
					<label for="username" class="uname" data-icon="u">您的账户名</label> <input
						id="username" name="username" required="required" type="text"
						placeholder="请输入账户名" />
				</p>
				<p>
					<label for="password" class="youpasswd" data-icon="p">您的密码</label>
					<input id="password" name="password" required="required"
						type="password" placeholder="请输入密码" />
				</p>
				<p class="form form-horizontal validate-form">
				<!-- 
				<table>
					<tr>

						<td><label for="username" class="uname">验证码</label></td>
						<td><input type="button" id="code" onclick="createCode()"
							style="width: 35px; height: 15px; margin-left: 12px" />&nbsp;</td>
						<td><input type="text" id="input" value=""
							style="width: 45px; height: 15px; margin-left: 12px" />&nbsp;</td>
					</tr>
				</table>
				 -->
				</p>
				<p class="login button">
					<input type="submit" value="登录" onclick="validate()" />
				</p>
				<p class="change_link">
					不是成员?<a href="#toregister" class="to_register">加入我们</a>
				</p>

			</div>

			<div id="register" class="animate form">
				<form action="user/touser" autocomplete="on" method="post">
					<h1>注册</h1>
					<p>
						<label for="usernamesignup" class="uname" data-icon="u">用户名</label>
						<input id="usernamesignup" name="name" required="required"
							type="text" placeholder="用户名" />
					</p>
					<p>
						<label for="passwordsignup" class="youpasswd" data-icon="p">密码</label>
						<input id="passwordsignup" name="password" required="required"
							type="password" placeholder="密码" />
					</p>
					<p>
						<label for="passwordsignup" class="youpasswd" data-icon="p">性别</label>

						<select class="form-control" name="sex" id="sex">
							<option value="0" >男</option>
							<option value="1" >女</option>
						</select>

					</p>
					<p>
						<label for="passwordsignup" class="youpasswd" data-icon="p">年龄</label>
						<input id="passwordsignup" name="year" required="required"
							type="text" placeholder="年龄" />
					</p>
					<p>
						<label for="passwordsignup" class="youpasswd" data-icon="p">联系电话</label>
						<input id="passwordsignup" name="phone" required="required"
							type="text" placeholder="联系电话" />
					</p>

					<p class="signin button">
						<input type="submit" value="注册" />
					</p>
					<p class="change_link">
						已经是成员?<a href="#tologin" class="to_register"> 去登录 </a>
					</p>
				</form>
			</div>

		</div>

	</div>

	<script>
		$(function() {
			$(".icon-save").click(function() {
				var name = $("#username").val();
				var password = $("#password").val();
				var requestDate = {};
				requestDate["name"] = name;
				requestDate["password"] = password;
				var str = JSON.stringify(requestDate);
				if (name == "") {
					alert("请填写登录名");
					return;
				}
				if (password == "") {
					alert("请填写密码");
					return;
				}
				$.ajax({
					type : "get",
					dataType : 'json',//默认转化对象
					async : true,
					url : "login", //提交到一般处理程序请求数据

					data : {
						"requestDate" : str
					},
					error : function() {
						alert("登录失败,请与管理员联系")
					},
					success : function(data) {
						var suc = data.succ;

						if (suc == "false") {
							alert("登录失败，请确认用户名与密码");
						} else {
							alert("登录成功")
							window.location.href = "sy.do";
						}
					}
				})
			})
		})
	</script>
</body>
</html>