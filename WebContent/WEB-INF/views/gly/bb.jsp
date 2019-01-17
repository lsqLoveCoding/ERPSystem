<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>后台管理系统</title>
<link rel="icon" href="${pageContext.request.contextPath}/image/title.png" type="image/x-icon"/>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
 <meta charset="utf-8"><link rel="icon" href="https://static.jianshukeji.com/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* css 代码  */
        </style>
        <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
        <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
        <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
        <script src="https://img.hcharts.cn/highcharts/themes/dark-unica.js"></script>
<script>

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
						<a href="sy" >用户列表</a>
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
						<a href="tzhw">货物列表</a>
					</dd>
					<dd>
						<a href="tzkc">库存列表</a>
					</dd>
					<dd>
						<a href="changeRepertory">调换库存</a>
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
						<a href="tzck">新建出库单</a>
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
						<a href="tzbb" class="active">生成报表</a>
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
	<div id="container" style="min-width:400px;height:400px"></div>
        <script>
        var chart = Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: '销售总体排行'
            },
            subtitle: {
                text: '数据仅为参考分析'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: -45  // 设置轴标签旋转角度
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: '利润(元)'
                }
            },
            legend: {
                enabled: true
            },
            tooltip: {
                pointFormat: '总利润: <b>{point.y:.1f} 元</b>'
            },
            series: [{
                name: '总利润',
                data: [
				<c:forEach items="${list}" var="list" >
                    ['${list.hw}', ${list.lr}],
                </c:forEach>
                ],
                dataLabels: {
                    enabled: false,
                    rotation: -200,
                    color: '#FFFFFF',
                    align: 'right',
                    format: '', // :.1f 为保留 1 位小数
                    y: 10
                }
            }]
        });
        </script>
	</section>

</body>
</html>
