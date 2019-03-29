<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/easyui.jsp"%>
<script type="text/javascript">

</script>
</head>
<body>
<script type="text/javascript">
jQuery.noConflict(); 
var j$ = jQuery;
j$(document).ready(function (){//이름이 없는 함수 선언

	j$('#searchText').textbox({
		icons: [{
			iconCls:'icon-search',
			handler: function(e){
				j$("#dg_board").datagrid({
					method:"get",
					url:"jsonQuestionSel.park?searchCombo=" + j$("#searchCombo").val() + "&searchText=" + j$("#searchText").val()
				});
			}
		}]
	});

	
	j$('#searchText').textbox('textbox').bind('keydown', function(e){
			if (e.keyCode == 13){	// when press ENTER key, accept the inputed value.
			//alert("jsonQuestionSel.park?searchCombo=" + j$("#searchCombo").val() + "&searchText=" + j$("#searchText").val());
				//t.textbox('setValue', $(this).val());
			j$("#dg_board").datagrid({
				method:"get",
				url:"jsonQuestionSel.park?searchCombo=" + j$("#searchCombo").val() + "&searchText=" + j$("#searchText").val()

			});	
			}
		});		


	j$('#dg_board').datagrid({
		onClickCell: function(index,field,value){
			//선택한 글의 번호
			var number = j$('#dg_board').datagrid('getRows')[index].base_post_number;
			var count = j$('#dg_board').datagrid('getRows')[index].base_view_count;
			location.href="read.park?base_post_number=" + number + "&base_view_count=" + count;
			
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
			<!-- 질문게시판 DataGrid 테이블 시작 -->
			<div class="col-sm-9 col-md-9">
			<div class="section-title line-style no-margin"><h3 class="title">질문게시판</h3></div>
				<table id="dg_board" class="easyui-datagrid" 
					style="width: 850px; height: 500px"
					data-options="singleSelect:true,collapsible:true,method:'get',url:'jsonQuestionSel.park'">
					<thead>
						<tr>
							<th
								id="base_post_number" data-options="field:'base_post_number',width:60,align:'center'">번호</th>
							<th data-options="field:'base_title',width:420,align:'center'">제목</th>
							<th data-options="field:'base_writer',width:130,align:'center'">작성자</th>
							<th
								data-options="field:'base_created_date',width:140,align:'center'">작성일</th>
							<th
								data-options="field:'base_view_count',width:60,align:'center'">조회수</th>
						</tr>
					</thead>
				</table>
				<!-- 질문게시판 DataGrid 테이블 끝 -->
				<!-- 검색 ComboBox 시작 -->
				<select id="searchCombo" class="easyui-combobox" name="dept" style="width:150px">
					<option value="base_writer">작성자</option>
					<option value="base_title">제목</option>
				</select> 
				<input id="searchText" class="easyui-textbox" style="width:250px">
				<!-- 검색 ComboBox 끝 -->
				&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- 글쓰기 버튼 시작-->
				<span style="float:right">
				<a href="questWrite.park" class="btn btn-default btn-lg"
					style="width: 120px" >글 작성</a></span>
				<!-- 글쓰기 버튼 끝-->
			</div>
		</div>
	</div>
	<!-- 본문내용 전체 묶기 끝-->
	<br>
	<br>
	<br>

	<%@ include file="../common/bottom.jsp"%>
</body>
</html>