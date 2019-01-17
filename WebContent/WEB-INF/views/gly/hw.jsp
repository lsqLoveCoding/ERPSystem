<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<link rel="icon" href="${pageContext.request.contextPath}/image/title.png" type="image/x-icon"/>
<meta charset="utf-8" />
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
									//scroll-to appended content 
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>
</head>
<body>
	<!--header-->
	<header>
		<h1>
			<img
				src="${pageContext.request.contextPath}/assets/images/admin_logo.png" />
		</h1>
		<ul class="rt_nav">
		<li><a href="tzzup" class="set_icon">账号设置</a></li>
		
			<li><a href="tzlogin" class="quit_icon">安全退出</a></li>
		</ul>
	</header>
	<!--aside nav-->
	<!--aside nav-->
	<aside class="lt_aside_nav content mCustomScrollbar">

		<ul>
			<li>
				<dl>
					<dt>用户管理</dt>
					<!--当前链接则添加class:active-->
					<dd>
						<a href="sy">用户列表</a>
					</dd>
					<dd>
						<a href="tjyh">添加用户</a>
					</dd>

				</dl>
			</li>
			<li>
				<dl>
					<dt>客户管理</dt>
					<!--当前链接则添加class:active-->
					<dd>
						<a href="khlb">客户列表</a>
					</dd>
					<dd>
						<a href="tjkh">添加客户</a>
					</dd>
				</dl>
			</li>
						<li>
				<dl>
					<dt>货物管理</dt>
					<dd>
						<a href="tzhw" class="active">货物列表</a>
					</dd>
					<dd>
						<a href="tzkc">库存列表</a>
					</dd>		
					<dd>
						<a href="changeRepertory" >调换库存</a>
					</dd>				
				</dl>
			</li>
			<li>
				<dl>
					<dt>入库管理</dt>					
					<dd>
						<a href="tzrk">新建入库单</a>
					</dd>					
					<dd>
						<a href="tzrksh">入库单审核</a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>出库管理</dt>									
					<dd>
						<a href="tzck" >新建出库单</a>
					</dd>
					<dd>
						<a href="tzcksh">出库单审核</a>
					</dd>

				</dl>
			</li>
			<li>
				<dl>
					<dt>报表管理</dt>
					<dd>
						<a href="tzbb">生成报表</a>
					</dd>
					<dd>
					    <a href="orderManage">账单管理</a>
					</dd>
					<dd>
					    <a href="repertoryManage">库存管理</a>
					</dd>
				</dl>
			</li>	
		</ul>
	</aside>

	
<section class="rt_wrap content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">货物列表</h2>
			</div>
			<section class="mtb">
			<form action="tzhw" method="post">
			
				<input type="text" name="name" id="name" class="textbox textbox_225"
					placeholder="输入商品名称" /> <input type="submit"
					value="查询" class="group_btn" />
					</form>
			</section>
			<table class="table">
				<tr>
					<th>商品Id</th>
					<th>商品名称</th>
					<th>仓库Id</th>
					<th>仓库地址</th>
					<th>数量</th>
					<th>价格</th>
					<th>供应商</th>
					<th>联系电话</th>
					<th>更新时间</th>
					<th>责任人</th>
					<th>操作</th>
				</tr>
				<tbody id="list">
					<c:forEach items="${list}" var="list" varStatus="num">
						<tr>
							<td id="id" class="center">${list.id}</td>
							<td id="name" class="center">${list.name}</td>
							<td id="repertory_id" class="center">${list.repertoryId}</td>
							<td id="repertory_location" class="center">${list.repertoryLocation}</td>
							<td id="number" class="center">${list.number}</td>
							<td id="money" class="center">${list.money}</td>
							<td id="gy" class="center">${list.gy}</td>
							<td id="phone" class="center">${list.phone}</td>
							<td id="date" class="center">${list.date}</td>
							<td id="zrr" class="center">${list.zrr}</td>
							<td class="center"> 
							<a href="xj?id=${list.id}">
							<input type="button" class="link_btn" value="下架" >
							</a>
							<a href="changeRepertory?id=${list.id}">
							<input type="button" class="link_btn" value="调仓" >
							</a>
								</td>

						</tr>
					</c:forEach>
				</tbody>

			</table>

		</div>
	</section>

</body>
</html>
