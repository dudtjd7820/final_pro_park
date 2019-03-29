<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/easyui.jsp"%>
</head>
<body>
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
					<h1 class="title">아이디 / 비밀번호 찾기</h1>
				</div>
				<div>
					<h2 class="sub-title">찾고싶은 항목을 선택하세요</h2>
				</div>
			</div>
		</div>
		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a href="#">고객센터</a></li>
					<li class="active">아이디 / 비밀번호 찾기</li>
				</ol>
			</div>
		</div>
	</section>
	<!-- /#breadcrumb -->
	<!-- 헤더 밑 메뉴 그림 끝 -->
	<br>
	<br>
	<br>
	<br>
	<!-- 본문내용 전체 묶기 시작-->
	<div class="container">
		<div class="row">
			<!-- 왼쪽 메뉴리스트 시작 -->
			<div class="col-sm-3 col-md-3">
				<ul class="block-menu" style="width: auto;">
					<li><a class="faq-button active" href="id_pw_find.park"> <i
							class="icon fa fa-user-secret"></i> 아이디/비밀번호 찾기
					</a></li>
					<li><a class="faq-button" href="notice.park"> <i
							class="icon fa fa-home"></i> 공지사항
					</a></li>
					<li><a class="faq-button" href="question.park"> <i
							class="icon fa fa-heart"></i> 질문게시판
					</a></li>
					<li><a class="faq-button" href="new-property.html"> <i
							class="icon fa fa-plus"></i> 자유게시판
					</a></li>
					<li><a class="faq-button" href="inquiry.park"> <i
							class="icon fa fa-plus"></i> 1:1문의
					</a></li>
					<li><a class="faq-button" href="new-property.html"> <i
							class="icon fa fa-plus"></i> 제휴문의
					</a></li>
				</ul>
			</div>
			<!-- 왼쪽 메뉴리스트 끝 -->
			<div class="col-sm-9 col-md-9">
				<!-- 아이디/비밀번호 찾기 메뉴 시작 -->
				<div class="section-title line-style no-margin">
					<h3 class="title">아이디/비밀번호 찾기</h3>
				</div>
				<div class="col-md-6">
					<div class="tabs" id="tab">
						<ul class="tab-button">
							<li class="active"><a href="#" data-target="tab-a">아이디
									찾기</a></li>
							<li class=""><a href="#" data-target="tab-b">비밀번호 찾기</a></li>
						</ul>
						<!-- /.tab-button -->
						<div id="aa" class="easyui-accordion"
							style="width: 300px; height: 200px;">
							<div title="Title1" data-options="iconCls:'icon-save'"
								style="overflow: auto; padding: 10px;">
								<h3 style="color: #0099FF;">Accordion for jQuery</h3>
								<p>Accordion is a part of easyui framework for jQuery. It
									lets you define your accordion component on web page more
									easily.</p>
							</div>
							<div title="Title2"
								data-options="iconCls:'icon-reload',selected:true"
								style="padding: 10px;">content2</div>
							<div title="Title3">content3</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 아이디/비밀번호 찾기 메뉴 끝 -->

		</div>
	</div>
	<!-- 본문내용 전체 묶기 끝-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@ include file="../common/bottom.jsp"%>
</body>
</html>