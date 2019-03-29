<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/easyui.jsp"%>
<script type="text/javascript">
//수정 버튼 누르면 비밀번호 입력창 발생
function pwInput(){
	$("#pwDialog").dialog('open');
}
//다이얼로그창에 비밀번호 치고 엔터키 누름
function press(){ 
	alart("dkdk");
	}

</script>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<script type="text/javascript">
jQuery.noConflict(); 
var j$ = jQuery;
j$(document).ready(function (){

j$('#dialPass').keyup(function(e){
		if (e.keyCode == 13)	
		console.log("gg");
		});
//수정화면으로 넘어가기
function edit(){
var aa = document.location.href;
var bb;
var cc;
bb=aa.split("?");
cc=bb[1].split("&");
location.href="edit.park?" + cc[0];
}


	


});


</script>

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
					<h1 class="title">질문게시판</h1>
				</div>
				<div>
					<h2 class="sub-title">궁금한점을 질문하세요</h2>
				</div>
			</div>
		</div>
		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
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
					<li><a class="faq-button" href="id_pw_find.park">
					<i class="icon fa fa-user-secret"></i> 아이디/비밀번호 찾기</a></li>
					<li><a class="faq-button" href="notice.park">
					<i class="icon fa fa-home"></i> 공지사항</a></li>
					<li><a class="faq-button active" href="question.park">
					<i class="icon fa fa-heart"></i> 질문게시판</a></li>
					<li><a class="faq-button" href="free.park">
					<i class="icon fa fa-plus"></i> 자유게시판</a></li>
					<li><a class="faq-button" href="inquiry.park">
					<i class="icon fa fa-plus"></i> 1:1문의</a></li>
					<li><a class="faq-button" href="new-property.html">
					<i class="icon fa fa-plus"></i> 제휴문의</a></li>
				</ul>
			</div>
			<!-- 왼쪽 메뉴리스트 끝 -->
			<div class="col-sm-9 col-md-9">
				<div class="col-md-12">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="text">작성자</label>
									<input type="text" class="margin-bottom form-control" id="base_writer" name="base_writer" value="${read.base_writer}" readonly="readonly">
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="text">작성일</label>
									<input type="text" class="margin-bottom form-control" id="base_created_date" name="base_created_date" value="${read.base_created_date}" readonly="readonly">
								</div>
								<div class="col-md-12">
									<label for="text">제목</label>
									<input type="text" class="margin-bottom form-control" id="base_title" name="base_title" value="${read.base_title}" readonly="readonly">
								</div>
								<div class="col-md-12">
									<label for="text">내용</label>
									<textarea class="margin-bottom form-control" rows="10" name="base_contents" id="base_contents" readonly="readonly">${read.base_contents}</textarea>
								</div>
							</div>
							<br>
							<span style="float:right">
						<!-- 글 수정 버튼 시작 -->	
<!-- 							<input id="submit" name="submit" type="submit" value="수정" class="btn btn-default" onClick="location.href='edit.park?base_post_number=25'"> -->
							<input id="submit" name="submit" type="submit" value="수정" class="btn btn-default" onClick="pwInput()">
							
							
						<!-- 글 수정 버튼 끝 -->
						<!-- 글 목록 버튼 시작-->
							<a href="question.park" class="btn btn-default" >목록으로</a></span>
						<!-- 글 목록 버튼 끝-->
						<!-- 비밀번호입력 다이얼로그 시작 -->
					<form id="f_save" name="f_save" method="post">
						<div id="pwDialog" class="easyui-dialog" title="비밀번호 입력" style="width:400px;height:200px;"
        					data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
        					<div align="center">
    						<br>
    						
    						<h4>비밀번호를 입력하세요</h4>
    						 
    						<br>
<%--     						<input type="text" name="base_post_pw" id="base_post_pw" value="${read.base_post_pw}"> --%>
    						<input type="text" id="dialPass" name="dialPass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:70%;height:34px;padding:10px">

							</div>
						</div>
						</form>
					</div>
			</div></div></div>
						<!-- 비밀번호입력 다이얼로그 끝 -->
	
	<br>
	<br>
	<br>

	<%@ include file="../common/bottom.jsp"%>
</body>
</html>











