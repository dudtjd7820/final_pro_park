<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/easyui.jsp"%>
<script type="text/javascript">
	/* 글 등록 버튼 누르면 처리 시작 */
	function save() {
		//폼 전송 처리함.
		$("#f_save").attr("method", "POST");
		$("#f_save").attr("action", "questionIns.park");
		$("#f_save").submit();
	}
	/* 글 등록 버튼 누르면 처리 끝 */
</script>
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
					<h1 class="title">질문하기</h1>
				</div>
				<div>
					<h2 class="sub-title">궁금한점을 질문하세요</h2>
				</div>
			</div>
		</div>
		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="usermain.park"><i class="fa fa-home"></i></a></li>
					<li><a href="#">고객센터</a></li>
					<li class="active">질문게시판</li>
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
					<li><a class="faq-button" href="id_pw_find.park"> <i
							class="icon fa fa-user-secret"></i> 아이디/비밀번호 찾기
					</a></li>
					<li><a class="faq-button" href="notice.park"> <i
							class="icon fa fa-home"></i> 공지사항
					</a></li>
					<li><a class="faq-button active" href="question.park"> <i
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
			<div class="section-title line-style no-margin"><h3 class="title">질문하기</h3></div>
				<div class="col-md-12">
						<form id="f_save" method="post">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="name">이름</label>
									<input type="text" class="margin-bottom form-control" id="base_writer" name="base_writer" placeholder="First &amp; Last Name .." required="">
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="password">비밀번호</label>
									<input type="password" class="margin-bottom form-control" id="base_post_pw" name="base_post_pw" placeholder="password" required="">
								</div>
								<div class="col-md-12">
									<label for="subject">제목</label>
									<input type="text" class="margin-bottom form-control" id="base_title" name="base_title" placeholder="Subject" required="">
								</div>
								<div class="col-md-12">
									<label for="text-message">내용</label>
									<textarea class="margin-bottom form-control" rows="10" name="base_contents" id="base_contents" required=""></textarea>
								</div>
							</div>
							<br>
							<span style="float:right">
						<!-- 글 등록 버튼 시작 -->	
							<input id="submit" name="submit" type="submit" value="등록" class="btn btn-default" onClick="save()">
						<!-- 글 등록 버튼 끝 -->
						<!-- 글 취소 버튼 시작-->
							<a href="question.park" class="btn btn-default" >취소</a></span>
						<!-- 글 취소 버튼 끝-->
						</form>
					</div>
			</div>
		</div>
	</div>
	<!-- 본문내용 전체 묶기 끝-->
	<br><br><br>
	<%@ include file="../common/bottom.jsp"%>
</body>
</html>