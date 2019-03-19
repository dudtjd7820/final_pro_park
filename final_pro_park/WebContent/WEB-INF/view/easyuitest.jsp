<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>Basic TextBox - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="resources/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../../resources/easyui/demo.css">
    <script type="text/javascript" src="../../../resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../../../resources/easyui/jquery.easyui.min.js"></script>
</head>
<body>


<form id="f_login">
	<input class="easyui-textbox" label="아이디" name="mem_id" data-options="iconCls:'icon-man'" style="width:200px">
	<br>
	<input class="easyui-textbox" label="비밀번호" name="mem_pw" data-options="iconCls:'icon-lock'" style="width:200px">
	<a id="btn_login" href="javascript:login()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">로그인</a>
</form>
<!-- 쿠키가 있을 때 => 로그인을 했을 때 -->
<a id="btn_logout" href="javascript:logout()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">로그아웃</a>
	}
	
	
	
	<h2>Basic TextBox</h2>
    <p>The textbox allows a user to enter information.</p>
    <div style="margin:20px 0;"></div>
    <div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Email:" labelPosition="top" data-options="prompt:'Enter a email address...',validType:'email'" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="First Name:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Last Name:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Company:" labelPosition="top" style="width:100%;">
        </div>
        
        <div>
            <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
        </div>
    </div>
    
    
</body>
</html>