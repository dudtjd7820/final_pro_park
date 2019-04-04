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
					<li><a href="usermain.park"><i class="fa fa-home"></i></a></li>
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
					<li><a class="faq-button" href="free.park"> <i
							class="icon fa fa-plus"></i> 자유게시판
					</a></li>
					<li><a class="faq-button" href="inquiry.park"> <i
							class="icon fa fa-plus"></i> 1:1문의
					</a></li>
					<li><a class="faq-button" href="contact.park"> <i
							class="icon fa fa-plus"></i> 제휴문의
					</a></li>
				</ul>
			</div>
			<!-- 왼쪽 메뉴리스트 끝 -->
			<div class="col-sm-9 col-md-9">
			<section class="shortcode-box" id="shortcode-tabs">
							<div class="section-title line-style no-margin"><h3 class="title">아이디/비밀번호 찾기</h3></div>
							<div class="row">
								
								<div class="col-md-12">
								<div role="tabpanel">

								  <!-- Nav tabs -->
								  <ul class="nav nav-tabs" role="tablist">
								    <li role="presentation" class="active"><a href="#find_id" aria-controls="home" role="tab" data-toggle="tab">아이디 찾기</a></li>
								    <li role="presentation"><a href="#find_pw" aria-controls="profile" role="tab" data-toggle="tab">비밀번호 찾기</a></li>
								  </ul>
								
								  <!-- Tab panes -->
								  <div class="tab-content">
								    <div role="tabpanel" class="tab-pane active" id="#find_id">
									
									
									<!--  -->
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingOne">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								        	핸드폰 번호로 찾기
								        </a>
								      </h4>
								    </div>
								    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								      <div class="panel-body">
								      	핸드폰번호 입력공간
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingTwo">
								      <h4 class="panel-title">
								        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								        	이메일 주소로 찾기
								        </a>
								      </h4>
								    </div>
								    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								      <div class="panel-body">
								      	이메일주소 입력공간
								      </div>
								    </div>
								  </div>
								</div>
									<!--  -->
									
									
									
									</div>
								    <div role="tabpanel" class="tab-pane" id="#find_pw">
<!--  -->
									<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingOne">
								      <h4 class="panel-title">
								        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								        	핸드폰 번호로 찾기222
								        </a>
								      </h4>
								    </div>
								    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								      <div class="panel-body">
								      	핸드폰번호 입력공간
								      </div>
								    </div>
								  </div>
								  <div class="panel panel-default">
								    <div class="panel-heading" role="tab" id="headingTwo">
								      <h4 class="panel-title">
								        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								        	이메일 주소로 찾기
								        </a>
								      </h4>
								    </div>
								    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								      <div class="panel-body">
								      	이메일주소 입력공간
								      </div>
								    </div>
								  </div>
								</div>
									<!--  -->
									</div>
								  </div>
								</div>
								</div>
							</div>

						</section></div>
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