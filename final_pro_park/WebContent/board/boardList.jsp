<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List"%>
<%
	List<Map<String,Object>> boardList = (List<Map<String,Object>>)request.getAttribute("boardList");
	int size=0;
	if(boardList!=null){
		size=boardList.size();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList.jsp[WebContent\board]</title>
<%@ include file="../WEB-INF/view/prohome/userPage/common/easyui.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script" rel="stylesheet">
<style type="text/css">
.font-size-5{
	font-family:'Nanum Pen Script', cursive;
	font-size: 30pt;
}
</style>
<script type="text/javascript">
	//작성일을 검색조건으로 하여 datagrid새로고침 처리
	function datagridReload(){
		$("#dg_board").datagrid({
			method:"get"
		   ,url:"jsonRestBoardList?bm_date="+v_date
		});		
	}
</script>
</head>
<body>
<script type="text/javascript">
var userInput;
var v_date;
	//기본 날짜포맷을 재정의
	$.fn.datebox.defaults.formatter = function(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		return y+'-'+(m<10? "0"+m:m)+'-'+(d<10? "0"+d:d);
	}
	//날짜 포맷을 적용	
	$.fn.datebox.defaults.parser = function(s){
		var t = Date.parse(s);
		if (!isNaN(t)){
			return new Date(t);
		} else {
			return new Date();
		}
	}	
	$(document).ready(function (){//이름이 없는 함수 선언
		//글쓰기 화면 초기화 및 버튼 추가 시작
		$("#dlg_boardIns").dialog({
            buttons: [{
                text:'저장',
                iconCls:'icon-ok',
                handler:function(){
                    //alert('ok');
                    //insert here
                    $("#f_boardIns").attr("method","post");
                    $("#f_boardIns").attr("action","./boardINS");
                    $("#f_boardIns").submit();
                }
            },{
                text:'닫기',
                iconCls:'icon-no',
                handler:function(){
                    //alert('cancel');
                    $("#dlg_boardIns").dialog('close');
                }
            }]			
		});
		//글쓰기 화면 초기화 및 버튼 추가 끝
		//등록 날짜 정보를 선택했을 때
		$('#db_date').datebox({
			onSelect: function(date){
				var y = date.getFullYear();
				var m = date.getMonth()+1;
				var d = date.getDate();
				v_date = y+'-'+(m<10? "0"+m:m)+'-'+(d<10? "0"+d:d);
			}
		});		
		$('#tb_search').textbox({
			icons: [{
				iconCls:'icon-search',
				handler: function(e){
					$("#dg_board").datagrid({
						method:"get",
						//url:"./jsonRestBoardList?cb_search=bm_title&tb_search=테스트"
						url:"./jsonRestBoardList?cb_search="+userInput+"&tb_search="+$("#tb_search").val()
					});
				},
			    onClickButton: function(e){
				    alert("엔터");
				}
			}]
		});
 		$('#cb_search').combobox({
			 onChange: function(){
				 	//alert("change");
		           userInput = $("#cb_search").combobox('getValue');
		     }
		});	
 		$('#tb_search').textbox('textbox').bind('keydown', function(e){
 			if (e.keyCode == 13){	// when press ENTER key, accept the inputed value.
				alert("엔터쳤을 때");
 				//t.textbox('setValue', $(this).val());
				$("#dg_board").datagrid({
					method:"get",
					url:"./jsonRestBoardList?cb_search="+userInput+"&tb_search="+$("#tb_search").val()
				});				
 			}
 		});		
		$('#linkBtnSearch').bind('click', function(){
	        //alert('작성일 조회 버튼');
			datagridReload();
	    });	
/*===================== CRUD버튼 시작 ====================*/
		$('#crudSel').bind('click', function(){
	        //alert('조회 버튼');
	        //location.href="./jsonBoardList";
	        $('#dg_board').datagrid({
		        method:'get',
	            url:'./jsonBoardList'
	        });
	    });	
		$('#crudIns').bind('click', function(){
	       // alert('입력 버튼');
	        $("#dlg_boardIns").dialog('open');
	    });	
		$('#crudUpd').bind('click', function(){
	        alert('수정 버튼');
	    });	
		$('#crudDel').bind('click', function(){
	        alert('삭제 버튼');
	    });	
/*===================== CRUD버튼   끝  ====================*/	    
		$('#pn_board').pagination({
			pageList: [5,10,15,20]
		   ,pageSize:5
		   ,total:<%=10%>
		});	    
/*===================== 글목록 화면 관련 시작 ==================*/		
 		$('#dg_board').datagrid({
 		    //url:'/board/boardList',
 		    columns:[[
 		        {field:'bm_no',title:'글번호',width:60,align:'center'},
 		        {field:'bm_title',title:'제목',width:180},
 		        {field:'bm_writer',title:'작성자',width:80,align:'center'},
 		        {field:'bm_date',title:'작성일',width:80,align:'center'},
 		        {field:'bs_fname',title:'첨부파일',width:140,align:'center'},
 		        {field:'bm_hit',title:'조회수',width:60,align:'center'}
 		    ]]
 		});
/*===================== 글목록 화면 관련  끝 ==================*/		
 	});////////////end of ready이벤트 종료
</script>
<!-- <table class="font-size-5" align="center" width="700px"> -->
<table align="center" width="700px">
<!-- 툴바 화면 시작 -->
	<tr>
		<td>
		<div id="tbar_board">
		<table width="100%" height="100px">
<!-- 검색 조건 화면 시작 -->		
			<tr>
				<td>
   <div id="tb" style="padding:2px 5px;">
                                    <!-- 
                                    req.getParameter("cb_search"):String
                                    SELECT * FROM board_master_t
                                    WHERE ?(컬럼) LIKE %||?||%
                                     -->
        <select class="easyui-combobox" id="cb_search" name="cb_search" panelHeight="auto" style="width:100px">
            <option value="bm_title">제목</option>
            <option value="bm_content">내용</option>
            <option value="bm_writer">작성자</option>
        </select>
        <input id="tb_search" name="tb_search" class="easyui-textbox" style="width:300px">
                작성일: <input id="db_date" class="easyui-datebox" name="bm_date" style="width:110px">
<!-- 태그내에서 속성(width, align, href)이나  -->   
        <a id="linkBtnSearch" class="easyui-linkbutton" iconCls="icon-search">Search</a>
<!--    <a id="linkBtnSearch" href="javascript:btnSearch()" class="easyui-linkbutton" iconCls="icon-search">Search</a> -->    
    </div>
<!-- 툴바 추가 중 조건검색 화면 끝 -->   				
				</td>
			</tr>
<!-- 검색 조건 화면    끝 -->		
<!-- 버튼 추가 시작 -->				
			<tr>
				<td align="left">
				  <a id="crudSel" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">조회</a>
				  <a id="crudIns" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">입력</a>
				  <a id="crudUpd" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">수정</a>
				  <a id="crudDel" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">삭제</a>
				</td>
			</tr>
<!-- 버튼 추가  끝  -->				
		</table>
		</div>
		</td>
	</tr>
<!-- 툴바 화면   끝  -->
<!-- 글목록 화면 시작 -->	
	<tr>
		<td>
		<table id="dg_board" class="easyui-datagrid" toolbar="#tbar_board"
		       data-options="footer:pn_board" title="계층형게시판" 
		       style="width:700px;height:400px">
<%
	if(size==0){
%>			       
		       <tr>
		       		<td rowspan="6">조회결과가 없습니다.</td>
		       </tr>
<%
	}
	else if(size>0){
		for(int i=0; i<size; i++){
			if(i==size) break;
			Map<String,Object> rMap = boardList.get(i);
%>	
				<tr>
		       		<td><%=rMap.get("BM_NO") %></td>
		       		<td><%=rMap.get("BM_TITLE") %></td>
		       		<td><%=rMap.get("BM_WRITER") %></td>
		       		<td><%=rMap.get("BM_DATE") %></td>
		       		<td><%=rMap.get("BS_FNAME") %></td>
		       		<td><%=rMap.get("BM_HIT") %></td>
		       </tr>
 <%
		}
	}
 %>
		</table>		
		</td>
	</tr>
<!-- 글목록 화면   끝  -->	
</table>
<!-- 페이지 네이션 추가 시작 -->
	<div id="pn_board" class="easyui-pagination" style="background:#efefef;border:1px solid #ccc;">
	</div>
<!-- 페이지 네이션 추가   끝  -->
<!-- 글입력 화면 추가 시작 -->
    <div id="dlg_boardIns" class="easyui-dialog" title="글쓰기" data-options="modal:true,closed:true" style="width:600px;height:400px;padding:10px">
        <form id="f_boardIns" method="post" enctype="multipart/form-data" style="margin:0;padding:20px 50px">
        	<table>
        		<tr>
        			<td width="100px">제&nbsp;&nbsp;&nbsp;목</td>
        			<td width="500px"><input id="bm_title" name="bm_title" class="easyui-textbox" data-options="width:'250px'" required></td>
        		</tr>
        		<tr>
        			<td width="100px">작&nbsp;성&nbsp;자</td>
        			<td width="500px"><input id="bm_writer" name="bm_writer" class="easyui-textbox" data-options="width:'150px'" required></td>
        		</tr>
        		<tr>
        			<td width="100px">이&nbsp;메&nbsp;일</td>
        			<td width="500px"><input id="bm_email" name="bm_email" class="easyui-textbox" data-options="width:'150px'" required></td>
        		</tr>
        		<tr>
        			<td width="100px">내&nbsp;&nbsp;&nbsp;용</td>
        			<td width="500px"><input id="bm_content" name="bm_content" class="easyui-textbox" data-options="multiline:'true',width:'350px', height:'90px'" required></td>
        		</tr>
        		<tr>
        			<td width="100px">비&nbsp;&nbsp;&nbsp;번</td>
        			<td width="500px"><input id="bm_pw" name="bm_pw" class="easyui-textbox" data-options="width:'100px'" required></td>
        		</tr>
        		<tr>
        			<td width="100px">첨부파일</td>
        			<td width="500px"><input id="fname" name="fname" class="easyui-filebox" data-options="width:'350px'" required></td>
        		</tr>
        	</table>
        </form>
    </div>
<!-- 글입력 화면 추가  끝   -->
</body>
</html>











