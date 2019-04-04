<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/easyui.jsp"%>
<script type="text/javascript">
jQuery.noConflict(); 
var j$ = jQuery;

</script>
</head>
<body>
<script type="text/javascript">
jQuery.noConflict(); 
var j$ = jQuery;
j$(document).ready(function (){
	


});


</script>
<%@ include file="../common/header.jsp"%>

<!-- 헤더 밑 메뉴 그림 시작 -->
	<section id="header-page" class="header-margin-base">
		<div class="skyline">
			<div data-offset="50" class="p1 parallax"></div>
			<div data-offset="25" class="p2 parallax"></div>
			<div data-offset="15" class="p3 parallax"></div>
			<div data-offset="8" class="p4 parallax"></div>
			<span class="cover"></span>
			<div class="container header-text">
				<div>
					<h1 class="title">제휴문의</h1>
				</div>
				<div>
					<h2 class="sub-title">제휴 문의 페이지 입니다</h2>
				</div>
			</div>
		</div>
		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="usermain.park"><i class="fa fa-home"></i></a></li>
					<li><a href="#">고객센터</a></li>
					<li class="active">제휴문의</li>
				</ol>
			</div>
		</div>
	</section>
	<!-- /#breadcrumb -->
	<!-- 헤더 밑 메뉴 그림 끝 -->
	<!-- 본문내용 전체 묶기 시작-->
	<section id="contact">
	<div class="container">
		<div class="row">
		<!-- 왼쪽 메뉴리스트 시작 -->
			<div class="col-sm-3 col-md-3">
				<ul class="block-menu" style="width: auto;">
					<li><a class="faq-button" href="id_pw_find.park">
					<i class="icon fa fa-user-secret"></i> 아이디/비밀번호 찾기</a></li>
					<li><a class="faq-button" href="notice.park">
					<i class="icon fa fa-home"></i> 공지사항</a></li>
					<li><a class="faq-button" href="question.park">
					<i class="icon fa fa-heart"></i> 질문게시판</a></li>
					<li><a class="faq-button" href="free.park">
					<i class="icon fa fa-plus"></i> 자유게시판</a></li>
					<li><a class="faq-button" href="inquiry.park">
					<i class="icon fa fa-plus"></i> 1:1문의</a></li>
					<li><a class="faq-button active" href="contact.park">
					<i class="icon fa fa-plus"></i> 제휴문의</a></li>
				</ul>
			</div>
			<!-- 왼쪽 메뉴리스트 끝 -->
			<div class="col-sm-9 col-md-9">
			<div class="section-title line-style no-margin"><h3 class="title">제휴문의</h3></div>
				<div class="col-md-12">
							<div class="row">
					<div class="col-md-9">
						<h3>Signin in with yout ProHome Account</h3>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra diam dui, eget semper dui fermentum non. Ac semper neque metus nec diam.
						<form method="post" action="contact.php" class="form-large" role="form" data-toggle="validator">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="name">Name</label>
									<input type="text" class="margin-bottom form-control" id="name" name="name" placeholder="First &amp; Last Name .." required="">
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="email">Email</label>
									<input type="email" class="margin-bottom form-control" id="email" name="email" placeholder="Email .." required="">
								</div>
								<div class="col-md-12">
									<label for="subject">Subject</label>
									<input type="text" class="margin-bottom form-control" id="subject" name="subject" placeholder="Subject">
								</div>
								<div class="col-md-12">
									<label for="text-message">Message</label>
									<textarea class="margin-bottom form-control" rows="4" name="text-message" id="text-message" required=""></textarea>
								</div>
								<div class="col-md-12">
									<label for="privacy">Privacy</label>
									<textarea class="margin-bottom form-control privacy" rows="1" name="privacy" id="privacy" disabled="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque quam ut fermentum ullamcorper. Pellentesque lobortis, ante vitae egestas venenatis, ante elit consectetur sem, sit amet auctor ex ligula sed mauris. Suspendisse tempor diam et hendrerit ullamcorper. Proin urna orci, pellentesque quis bibendum at, ultrices vulputate tortor. Integer ac ante diam. In et euismod nulla. Donec nibh nisl, egestas nec porta eu, hendrerit et urna.</textarea>
								</div>
								<div class="col-md-12 margin-bottom">
									<input class="labelauty" type="checkbox" checked="" id="labelauty-425741" style="display: none;"><label for="labelauty-425741"><span class="labelauty-unchecked-image"></span><span class="labelauty-unchecked">Privacy accept</span><span class="labelauty-checked-image"></span><span class="labelauty-checked">Privacy accept</span></label>
								</div>
							</div>
							<input id="submit" name="submit" type="submit" value="Send mail" class="btn btn-default">
						</form>
					</div>
					<div class="col-md-3">
						<div class="info-top">
							<h1>Contact</h1>
							<ul class="grey-box">
								<li>+123-456-789 <i class="icon fa fa-phone"></i></li>
								<li><a href="#">info@example.com</a><i class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>E-mail</h2>
							<ul class="grey-box">
								<li><a href="mailto:info@prohome.com">Info</a><i class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:support@prohome.com">Support</a><i class="icon fa fa-envelope-o"></i></li>
								<li><a href="mailto:development@prohome.com">Dev</a><i class="icon fa fa-envelope-o"></i></li>
							</ul>
							<h2>Phone &amp; Fax</h2>
							<ul class="grey-box">
								<li>Info: +0123-456-789 <i class="icon fa fa-mobile"></i></li>
								<li>Support: +0123-987-654 <i class="icon fa fa-phone"></i></li>
								<li>Dev: +0123-123-456 <i class="icon fa fa-phone"></i></li>
							</ul>
						</div>
					</div>
				</div>

					</div>
			</div></div></div></section>
	
	<br>
	<br>
	<br>

	<%@ include file="../common/bottom.jsp"%>
</body>
</html>











