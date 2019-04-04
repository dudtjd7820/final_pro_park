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
//수정 버튼 누르면 비밀번호 입력창 발생
function f_editPwDialog(){
	j$("#editPwDialog").dialog('open');
}

//삭제 버튼 누르면 비밀번호 입력창 발생
function f_deletePwDialog(){
	j$("#deletePwDialog").dialog('open');
}



</script>
</head>
<body>
<script type="text/javascript">
jQuery.noConflict(); 
var j$ = jQuery;
j$(document).ready(function (){
	//글 수정시 비밀번호 입력후 엔터키 치면 실행됨
	j$('#editDialPass').textbox('textbox').bind('keydown', function(e){
			if (e.keyCode == 13){	// when press ENTER key, accept the inputed value.
				if(j$("#editDialPass").val() == ${boardRead.base_post_pw}){
					//console.log("일치");
				var aa = document.location.href;
				var bb;
				var cc;
				bb=aa.split("?");
				cc=bb[1].split("&");
				location.href="noticeEdit.park?" + cc[0];
					}
				}
				//t.textbox('setValue', $(this).val());
	});
	//글 삭제시 비밀번호 입력후 엔터키 치면 실행됨
	j$('#deleteDialPass').textbox('textbox').bind('keydown', function(e){
		if (e.keyCode == 13){	// when press ENTER key, accept the inputed value.
			if(j$("#deleteDialPass").val() == ${boardRead.base_post_pw}){
				
				var aa = document.location.href;
				var bb;
				var cc;
				bb=aa.split("?");
				cc=bb[1].split("&");
				//폼 전송 처리함.
				j$("#f_save").attr("method", "POST");
				j$("#f_save").attr("action", "noticeDel.park?" + cc[0]);
				j$("#f_save").submit();
				
					}
				}	
	});


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
					<h1 class="title">공지사항</h1>
				</div>
				<div>
					<h2 class="sub-title">공지사항 입니다</h2>
				</div>
			</div>
		</div>
		<div id="breadcrumb">
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="usermain.park"><i class="fa fa-home"></i></a></li>
					<li><a href="#">고객센터</a></li>
					<li class="active">공지사항</li>
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
					<li><a class="faq-button active" href="notice.park">
					<i class="icon fa fa-home"></i> 공지사항</a></li>
					<li><a class="faq-button" href="question.park">
					<i class="icon fa fa-heart"></i> 질문게시판</a></li>
					<li><a class="faq-button" href="free.park">
					<i class="icon fa fa-plus"></i> 자유게시판</a></li>
					<li><a class="faq-button" href="inquiry.park">
					<i class="icon fa fa-plus"></i> 1:1문의</a></li>
					<li><a class="faq-button" href="contact.park">
					<i class="icon fa fa-plus"></i> 제휴문의</a></li>
				</ul>
			</div>
			<!-- 왼쪽 메뉴리스트 끝 -->
			<div class="col-sm-9 col-md-9">
				<div class="col-md-12">
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="text">작성자</label>
									<input type="text" class="margin-bottom form-control" id="base_writer" name="base_writer" value="${boardRead.base_writer}" disabled>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<label for="text">작성일</label>
									<input type="text" class="margin-bottom form-control" id="base_created_date" name="base_created_date" value="${boardRead.base_created_date}" disabled>
								</div>
								<div class="col-md-12">
									<label for="text">제목</label>
									<input type="text" class="margin-bottom form-control" id="base_title" name="base_title" value="${boardRead.base_title}" disabled>
								</div>
								<div class="col-md-12">
									<label for="text">내용</label>
									<textarea class="margin-bottom form-control" rows="10" name="base_contents" id="base_contents" disabled>${boardRead.base_contents}</textarea>
								</div>
							</div>
							<br>
							<span style="float:right">
						<!-- 글 수정 버튼 시작 -->	
						<input id="submit" name="submit" type="submit" value="수정" class="btn btn-default" onClick="f_editPwDialog()">
						<!-- 글 수정 버튼 끝 -->
						<!-- 글 삭제 버튼 시작 -->
						<input id="submit" name="submit" type="submit" value="삭제" class="btn btn-default" onClick="f_deletePwDialog()">
						<!-- 글 삭제 버튼 끝 -->
						<!-- 글 목록 버튼 시작-->
							<a href="notice.park" class="btn btn-default" >목록으로</a></span>
						<!-- 글 목록 버튼 끝-->
					<form id="f_save" name="f_save" method="post">
						<!-- 글 수정 비밀번호입력 다이얼로그 시작 -->
						<div id="editPwDialog" class="easyui-dialog" title="비밀번호 입력" style="width:400px;height:200px;"
        					data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
        					<div align="center">
    						<br>
    						
    						<h4>비밀번호를 입력하세요</h4>
    						 
    						<br>
    						<input id="editDialPass" name="editDialPass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:70%;height:34px;padding:10px">

							</div>
						</div>
						<!-- 글 수정 비밀번호입력 다이얼로그 끝 -->
						<!-- 글 삭제 비밀번호입력 다이얼로그 시작 -->
						<div id="deletePwDialog" class="easyui-dialog" title="비밀번호 입력" style="width:400px;height:200px;"
        					data-options="iconCls:'icon-save',resizable:true,modal:true,closed:true">
        					<div align="center">
    						<br>
    						
    						<h4>비밀번호를 입력하세요</h4>
    						 
    						<br>
    						<input id="deleteDialPass" name="deleteDialPass" class="easyui-passwordbox" prompt="Password" iconWidth="28" style="width:70%;height:34px;padding:10px">

							</div>
						</div>
						<!-- 글 삭제 비밀번호입력 다이얼로그 끝 -->
						</form>
					</div>
			</div></div></div>
	
	<br>
	<br>
	<br>

	<%@ include file="../common/bottom.jsp"%>
</body>
</html>











