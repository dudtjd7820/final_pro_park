<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="resources/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="resources/easyui/demo/demo.css">
    <script type="text/javascript" src="resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="resources/easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/easyui/themes/color.css">
    <script type="text/javascript">
    function qq(value,name){
        alert(value+":"+name)
    }
	</script>
</head>
<body>
    <center>
	<h1>공지사항</h1>
	<!-- 공지사항 DataGrid 테이블 시작 -->
    <table class="easyui-datagrid" title="공 지 사 항" style="width:1000px;height:500px"
            data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
        <thead>
            <tr>
                <th data-options="field:'base_post_number',width:60,align:'center'">번호</th>
                <th data-options="field:'base_title',width:500,align:'center'">제목</th>
                <th data-options="field:'base_writer',width:100,align:'center'">작성자</th>
                <th data-options="field:'base_created_date',width:100,align:'center'">작성일</th>
                <th data-options="field:'base_view_count',width:60,align:'center'">조회수</th>
            </tr>
        </thead>
    </table>
    <input id="ss" class="easyui-searchbox" style="width:300px"
	        data-options="searcher:qq,prompt:'Please Input Value',menu:'#mm'"/>
	        
	<div id="mm" style="width:120px">
	    <div data-options="name:'mem_id'">작성자</div>
	    <div data-options="name:'content'">내용</div>
	</div>
	 
</body>
</html>