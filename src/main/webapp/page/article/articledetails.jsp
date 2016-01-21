<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="page/assets/css/bootstrap.css" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=basePath%>page/assets//img/tubiao.ico" />
<title>注册</title>
<style type="text/css">
.top20{
	margin-top: 20px
}
.top10{
	margin-top: 10px
}
.touming{
	background-color:rgba(0,0,0,0.1);
	border: 0;
}
.nosingline{
	display: inline;
}
.wenzizhidi{
	position:absolute;
	margin:5px 0px 5px 5px
}
.titlewenzizhidi{
	position:absolute;
	margin:3px 0px 5px 5px
}
.updownwenzizhidi{
	position:absolute;
	margin:5px 0px 5px 5px
}
a{
	cursor:pointer
}
</style>
</head>
<body style="background-image: url('page/assets/img/bg_grid.png');">
	<!-- 头部导航 -->
	<jsp:include page="../head_foot/head.html"></jsp:include>
	<div class="container">
		<div class="row" >
		<!-- 左侧部分 -->
			<div class="col-sm-7">
				<div id="title" align="center"><h2>${article.index_title}</h2></div>
				<div class="row top20">
					<div class="col-sm-1 "></div>
					<div class="col-sm-4 " style="color: #777777">
					<img  alt='' style='height: 20px;width: 20px;' src='page/assets/img/circle-calendar.png'>
					<h5 class="nosingline titlewenzizhidi" style="text-align:center;">${article.index_uptime_format}</h5></div>
					<div class="col-sm-3" style="color: #777777">
					<img  alt='' style='height: 20px;width: 20px;' src='page/assets/img/circle_global.png'>
					来源：本站</div>
					<div class="col-sm-4" style="color: #777777">
					<img  alt='' style='height: 20px;width: 20px;' src='page/assets/img/circle_profle.png'>
					发布者:${article.upfrom}</div>
				</div>
				<div class="well row top20" style="background-color: white;border-radius: 10px 10px 10px 10px;">
					<p style="color: #444444;">
					${article.index_content}
					</p>
				</div>
				<div class="row top20">
					<div class="col-sm-5" style="padding-left: 0px">
					<img  alt='' style='height: 20px;width: 20px;' src='page/assets/img/circle-arrow-up.png'>
						<h5 class="nosingline updownwenzizhidi"><a>Example page header </a></h5>
					</div>
					<div class="col-sm-4 col-sm-offset-3">
						<h5 class="nosingline updownwenzizhidi"><a>Example page headerExa  </a></h5>
						<img  alt='' style='height: 20px;width: 20px;float: right;' src='page/assets/img/circle-arrow-down.png'>
					</div>
				</div>
				<!-- 相关文章 -->
				<div class="row top20">
					<div class="row">
						<div class="col-sm-5">
							<img  alt='' style='height: 20px;width: 20px;margin-top: 1px' src='page/assets/img/circle-document.png'>
							<h4 class="nosingline titlewenzizhidi" style="color: #666666">相关文章</h4>
						</div>
					</div>
					<div class="row top10">
						<div class="col-sm-5">
							<a>Example page header Subtext for header</a>
							<a>Example page header Subtext for header</a>
							<a>Example page header Subtext for header</a>
						</div>
						<div class="col-sm-5 col-sm-offset-2">
							<a>Example page header Subtext for header</a>
							<a>Example page header Subtext for header</a>
							<a>Example page header Subtext for header</a>
						</div>
					</div>
				</div>
				<!-- 发表评论 -->
				<div class="row top20">
					<div class="row">
						<div class="col-sm-5" style="padding-left: 5px">
							<img  alt='' style='height: 30px;width: 30px;' src='page/assets/img/circle-chat.png'>
							<h4 class="nosingline wenzizhidi" style="color: #666666">说点什么吧！</h4>
						</div>
					</div>
					<div class="row top10" >
						<div class="col-sm-12" style="padding-left: 5px;">
							<textarea style="border-radius: 10px 10px 10px 10px;" class="form-control" rows="3" placeholder="说点什么~"></textarea>
						</div>
						
					</div>
					<div class="row top10">
						<div class="col-sm-2 col-sm-offset-10" align="center">
							<button type="button" class="btn btn-block" style="color:white;background-color: #3f316d">发布</button>
						</div>
					</div>
				</div>
				<!-- 评论部分 -->
				<div class="row top10">
					<div class="well col-sm-12" style="padding:15px 0px 10px 15px;border-radius: 10px 10px 10px 10px;background-color:rgba(255,255,255,0.6);">
						<div class="col-sm-2" style="padding: 20px 0px 0px 0px;text-align: center;">
							<img class="img-circle" src="page/assets/img/touxiang_zhushou.jpg" alt="..." style="height: 80px;width: 80px" >
							<h5 style="margin-top: 15px; color: #666666">1楼</h5>
						</div>
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-2" style="padding-left: 0px">
									<h5 style="color: #2A6496">yanweichen</h5>
								</div>
								<div class="col-sm-4 col-sm-offset-6">
									<h5 style="color: #666666;">2016年1月21日 14:25</h5>
								</div>
							</div>
							<div class="row top10">
								<p style="color: #444444;">从天到地，从地到天，万事万物多么神奇！多么神奇，啦啦啦啦啦！
								从天到地，从地到天，万事万物多么神奇！多么神奇，啦啦啦啦啦！
								从天到地，从地到天，万事万物多么神奇！多么神奇，啦啦啦啦啦！
								从天到地，从地到天，万事万物多么神奇！多么神奇，啦啦啦啦啦！
								</p>
							</div>
								<!-- 二级评论 -->
								<div class="row well"  style="margin-right:10px;padding:15px 0px 10px 15px;border-radius: 10px 10px 10px 10px;background-color:rgba(255,255,255,0.7);">
									<div class="row" style="padding-left: 0px;padding-right: 0px;margin-bottom: 10px">
										<div class="col-sm-1">
											<img class="img-circle" src="page/assets/img/touxiang_zhushou.jpg" alt="..." style="height: 30px;width: 30px" >
										</div>
										<div class="col-sm-3" style="padding-right: 0px;padding-left: 10px" >
											<h5 class="nosingline" style="color: #2A6496">yadaye</h5>&nbsp;回复说&nbsp;&nbsp;:
										</div>
										<div class="col-sm-8" style="padding-left: 0px;padding-right:30px">
										<p style="color: #444444">呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵</p></div>
									</div>
									<div class="row" style="padding-left: 0px;padding-right: 0px;margin-bottom: 10px">
										<div class="col-sm-1">
											<img class="img-circle" src="page/assets/img/touxiang_zhushou.jpg" alt="..." style="height: 30px;width: 30px" >
										</div>
										<div class="col-sm-3" style="padding-right: 0px;padding-left: 10px" >
											<h5 class="nosingline" style="color: #2A6496">yadaye</h5>&nbsp;回复说&nbsp;&nbsp;:
										</div>
										<div class="col-sm-8" style="padding-left: 0px;padding-right:30px">
										<p style="color: #444444">呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵</p></div>
									</div>
									<div class="row" style="padding-left: 0px;padding-right: 0px;margin-bottom: 10px">
										<div class="col-sm-1">
											<img class="img-circle" src="page/assets/img/touxiang_zhushou.jpg" alt="..." style="height: 30px;width: 30px" >
										</div>
										<div class="col-sm-3" style="padding-right: 0px;padding-left: 10px" >
											<h5 class="nosingline" style="color: #2A6496">yadaye</h5>&nbsp;回复说&nbsp;&nbsp;:
										</div>
										<div class="col-sm-8" style="padding-left: 0px;padding-right:30px">
										<p style="color: #444444">呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵</p></div>
									</div>
								</div>
								<!-- 回复点赞 -->
							<div class="row">
								<div class="col-sm-1 col-sm-offset-9" style="padding-right: 0px;padding-left: 0px">
									<button type="button" class="btn btn-sm" style="color:white;background-color: #3f316d">评论</button>
								</div>
								<div class="col-sm-2">
									<div align="right" style="margin-top: 5px">
										<img class="img-circle" src="page/assets/img/hand_thumbsup.png" alt="..." style="height: 20px;width: 20px" >
										<strong style="color: #5CACEE">(32)</strong>
									</div>
								</div>
							</div>
							<!-- 二级回复框 -->
							<div class="row top10" style="display: none;">
								<div class="col-sm-10" style="padding-left: 0px;padding-right: 0px">
									<textarea style="border-radius: 10px 10px 10px 10px;" class="form-control" rows="3" placeholder="说点什么~"></textarea>
								</div>
								<div class="col-sm-2">
									<button type="button" class="btn btn-sm" style="color:white;background-color: #3f316d;margin-top: 30px">回复</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 右侧部分 -->
			<div class="col-sm-4 col-sm-offset-1">
				<div class="list-group" style="background-color:rgba(0,0,0,0.0);">
					<a href="#" class="list-group-item touming active"style="background-color: #3f316d">
						<h4 class="list-group-item-heading" style="margin-top: 5px" >热门文章</h4>
					</a>
					<a href="#" class="list-group-item touming">
						<img  alt='' style='height: 20px;width: 20px;margin-right: 5px;margin-bottom: 5px' src='page/assets/img/indexhoticon.png'>
						<h4 class="list-group-item-heading nosingline">热门文章热门文章热门文章</h4>
					</a>
					<a href="#" class="list-group-item touming">
						<img  alt='' style='height: 20px;width: 20px;margin-right: 5px;margin-bottom: 5px' src='page/assets/img/indexhoticon.png'>
						<h4 class="list-group-item-heading nosingline">热门文章热门文章热门文章热门文章</h4>
					</a>
					<a href="#" class="list-group-item touming">
						<img  alt='' style='height: 20px;width: 20px;margin-right: 5px;margin-bottom: 5px' src='page/assets/img/indexhoticon.png'>
						<h4 class="list-group-item-heading nosingline">热门文章热门文章热门文章热门文章</h4>
					</a>
					<a href="#" class="list-group-item touming">
						<img  alt='' style='height: 20px;width: 20px;margin-right: 5px;margin-bottom: 5px' src='page/assets/img/indexhoticon.png'>
						<h4 class="list-group-item-heading nosingline">热门文章热门文章热门文章热门文章</h4>
					</a>
					<a href="#" class="list-group-item touming">
						<img  alt='' style='height: 20px;width: 20px;margin-right: 5px;margin-bottom: 5px' src='page/assets/img/indexhoticon.png'>
						<h4 class="list-group-item-heading nosingline">热门文章热门文章热门文章热门文章</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script src="page/assets/js/jquery-1.8.1.min.js"></script>
	<!-- foot -->
	<jsp:include page="../head_foot/foot.html"></jsp:include>
	<script src="page/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
	</script>
</body>
</html>