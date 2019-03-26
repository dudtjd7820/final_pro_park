<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<%
// 	List<Map<String,Object>> useList = (List<Map<String,Object>>)request.getAttribute("useList");
// 	int size = 0;
// 	if(useList != null){
// 		size = useList.size();
// 	}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
<%@ include file="../common/easyui_common.jsp" %>
<script type="text/javascript">
	
// 	function changeFunc() {
// 	    var selectBox = document.getElementById("selectBox");
// 	    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
// 	    alert(selectedValue);
// 	}

	function changeFunc($i) {
	    alert($i);
	}

	
</script>
  </head>
  <body class="fixed-header">
  
  <script type="text/javascript">
	$(document).ready(function(){
		alert("ready")
		//등록날짜 정보를 선택했을 때
		$('#usehis').show({
			method:"get"
		   ,url:"useList.park"
		});
		
		$('#home').click(function (e) {
	 		  e.preventDefault()
	 		  $(this).tab('show')
	 	});
 	});

 	function hisList(){
 		$("#usehis").attr("method","get"); //첨부파일을 하려면 post로 해야하지만 일단 테스트를 위해 get으로 한다.
		$("#usehis").attr("action","/useList.park");
		$("#usehis").submit();
		$('#myModal').modal()                      // initialized with defaults
		$('#myModal').modal({ keyboard: false })   // initialized with no keyboard
		$('#myModal').modal('show') 
 	}

 	
  </script>

	<div id="page-container">
		<header class="menu-base" id="header-container-box">
			<div class="info"><!-- info -->
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<a href="#mobile-menu" id="mobile-menu-button" class="visible-xs"><i class="fa fa-bars"></i></a>
							<a href="call:1-800-555-1234" class="hidden-xs"><i class="icon fa fa-phone"></i> (011)-8800-555</a>
							<a href="#" data-section="modal-contact" data-target="#modal-contact" data-toggle="modal" class="hidden-xs"><i class="icon fa fa-envelope-o"></i> Info</a>
						</div>
						<div id="login-pan" class="col-md-6 hidden-xs">
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i> Sign up</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> Login</a>
						</div>
					</div>
				</div>			
			</div><!-- /.info -->
			<div class="logo hidden-xs">
				<a href="#"><img id="logo-header" src="images/logo.png" alt="Logo" /></a>
			</div><!-- /.logo -->
<%@ include file="../common/header.jsp" %>
			<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
			<a href="#" class="hidden-xs fixed-button email" data-toggle="modal" data-target="#modal-contact" data-section="modal-contact"><i class="fa fa-envelope-o"></i></a>
		</header>
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">사용이력</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor sir ats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">Invoice</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="invoice">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="section-title no-margin">
							<h3 class="title">최근 이용한 주차장</h3>
						</div>
						<div class="row client">
							<div class="col-sm-4 col-md-4">
								<address>
								  <strong>주차장 이름</strong><br />
								   열받는주차장
								</address>
								<address>
								  <strong>대표번호</strong><br />
								  <a href="mailto:#">02-312-1818</a>
								</address>
							</div>
							
							<div class="col-sm-4 col-md-4">
								<address>
								  <strong>주소</strong><br />
								  795 Folsom Ave, Suite 600<br />
								  San Francisco, CA 94107<br />
								</address>
							</div>
							
							<div class="col-sm-4 col-md-4">
								<div class="form-horizontal">
								  <div class="form-group">
									<label class="col-sm-6 control-label">사용일자</label>
									<div class="col-sm-6">
									  <p class="form-control-static">2019-02-03</p>
									</div>
								  </div>
								</div>
							</div>
						</div>
						
						
						
						
						<div class="table-responsive description">
							<table id="usehis" class="table">
							  <thead>
<div class="section-title line-style no-margin">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="../member/useHistory.park"><i class="icon fa fa-cog">&nbsp;더 보기<br></i></a>
</div>
								<tr>
									<th>N&deg;</th>
									<th>주소</th>
									<th>&nbsp;</th>
									<th>이름</th>
									<th>&nbsp;</th>
									<th>사용일자</th>
									<th>&nbsp;</th>
									<th>대표번호</th>
								</tr>
							  </thead>
							  <tbody>
							  
<%
// 	if(size == 0){
%>		       
<!-- 		       <tr> -->
<!-- 		       	<td rowspan="6">조회결과가 없습니다.</td> -->
<!-- 		       </tr> -->
<%
// 	}
// 	else if(size > 0){
// 		for(int i=0; i<size; i++){
// 			if(i == size) break;
// 			Map<String,Object> rMap = useList.get(i);
%>
							  
							  
							  
							  
								<tr>
									<td>1</td>
									<td id="usehis" colspan="2" name="addr"></td>
<%-- 									<td colspan="2"><%=rMap.get("BM_NO") %></td> --%>
									<td>우리주차장6</td>
									<td> </td>
									<td>2019-01-13</td>
									<td> </td>
									<td class="text-right">02-521-4253</td>
								</tr>
								
								
<%
// 		}
// 	}
%>	
								<tr>
									<td>2</td>
									<td colspan="2">There are many variations of passages of Lorem Ipsum available</td>
									<td>6</td>
									<td> </td>
									<td>$200,00</td>
									<td> </td>
									<td class="text-right">$1200,00</td>
								</tr>
								<tr>
									<td>3</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>4</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>5</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>6</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>7</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>8</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>9</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								<tr>
									<td>10</td>
									<td colspan="2">Lorem ipsum dolor sit amet</td>
									<td>1</td>
									<td> </td>
									<td>$1240,50</td>
									<td> </td>
									<td class="text-right">$1240,50</td>
								</tr>
								
								<tr>
									<td>&nbsp;&nbsp;</td>
									<td colspan="5" class="text-right">총 이용 건수</td>
									<td colspan="2" class="text-right">10</td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;</td>
									<td colspan="5" class="footer-invoice">총 사용 포인트</td>
									<td colspan="2" class="footer-invoice">2153</td>
								</tr>
								
							  </tbody>
							</table><!-- /.table -->
						</div><!-- /.table-responsive -->
						
<!-- pagination -->	
		<selection>
			<div class="container" id="pagination">
				<div class="row">
					<div class="col-md-9 col-md-offset-3 text-left">
						<ul class="pagination">
							<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a class="no-active">...</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div><!-- ./container -->
		</selection>
						
						
						
						

						<div class="section-title">
							<h3 class="title">Note:</h3>
						</div>
						<div class="row note">
							<div class="col-md-8">
								<textarea class="form-control" name="note" id="note">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu mauris mauris. Sed consequat lectus vel mauris vehicula ornare. Quisque sit amet dignissim turpis. Morbi neque risus, faucibus nec justo eu, consectetur cursus elit. Nunc non iaculis erat.</textarea>
							</div>
						</div>

					</div>
					<div class="col-md-3">
<!-- 											혹시 쓸 수도 있으니까 주석처리 -->
<!-- 						<a href="#" class="button-sidebar hover-effect"> -->
<!-- 							<i class="icon fa fa-floppy-o"></i>  -->
<!-- 							Save / Stores <b>Invoice</b> -->
<!-- 							<span class="cover"></span> -->
<!-- 						</a> -->

							<div class="right-box">
						<select id="selectBox1" onchange="changeFunc(value)">
						   <option value="1">Option #1</option>
						   <option value="2">Option #2</option>
						</select>	
							</div>
							
							
							
						<div class="section-title line-style">
						<br><br><br><br><br><br><br><br><br><br><br><br>
							<h3 class="title">조회 기간 설정</h3>
						</div>
						<div class="right-box">
							<select id="selectBox" class="dropdown" onchange="changeFunc(value)" data-settings='{"cutOff": 5}'>
								<option>최근 10건</option>
								<option value="1month">1개월</option>
								<option value="EUR">3개월</option>
								<option value="GBP">6개월</option>
								<option value="AUD">1년</option>
							</select>
						</div>
	
	
	<div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">...</div>
    <div role="tabpanel" class="tab-pane" id="profile">...</div>
    <div role="tabpanel" class="tab-pane" id="messages">...</div>
    <div role="tabpanel" class="tab-pane" id="settings">...</div>
  	</div>

					

					</div>
				</div>
			</div>
		</section>

		<footer id="footer-page" class="section-color">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-3">
						<span class="title with-icon">
							<img class="logo-footer" src="images/mini-logo-x1.png" alt="logo" />
							Shortly About Us
						</span>
						<span class="text">
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration inble. If you are of going.
						</span>
					</div>
					<div class="col-sm-6 col-md-3">
						<span class="title">CALL US NOW</span>
						<span class="phone"><i class="fa fa-phone"></i> (011)-8800-555</span>
						<span class="address">
						</span>
						339 Broadway Ave, <strong>New York</strong><br />
						<i class="fa fa-map-marker"></i> NY 10013, USA
					</div>
					<div class="hidden-xs hidden-sm col-md-3">
						<span class="title">Extras</span>
						<ul class="link-extra">
							<li><a href="#">ProHome Mobile Apps</a></li>
							<li><a href="#">Market Guide</a></li>
							<li><a href="#">ProHome&reg; Magazine</a></li>
							<li><a href="#">More Resources</a></li>
						</ul>
					</div>
					<div class="col-sm-6 col-md-3">
						<span class="title">Our Newsletter</span>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu condimentum neque.
						<div class="newsletter-box">
						  <input type="text" class="form-control" placeholder="Your email">
						  <button class="btn btn-default send" type="button"><i class="fa fa-envelope-o"></i></button>
						</div><!-- /input-group -->
					</div>
				</div>
			</div>
			<div class="credits">
				<div class="container">
					<div class="row">
						<div class="hidden-xs col-md-6 credits-text">Copyright 2015 <b>ProHome</b> | All Rights Reserved | Designed By AndyLab</div>
						<div class="col-md-6">
							<ul class="social-icons">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<div class="modal fade login-modal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
				<div class="login-button-container">
					<a href="#" data-section="login"><i class="fa fa-user"></i></a>
					<a href="#" data-section="sign-in"><i class="fa fa-pencil-square-o"></i></a>
					<a href="#" data-section="recovery"><i class="fa fa-lock"></i></a>
					<a href="#" data-section="setting"><i class="fa fa-cog"></i></a>
				</div><!-- ./login-button-container -->
				<div class="form-container">
					<form method="post" action="#">
						<div id="login" class="box">
							<h2 class="title">Login in to your account</h2>
							<h3 class="sub-title">It is a breach of our terms and conditions to provide username and password details to unauthorised third parties. Unauthorised use may lead to suspension or termination.</h3>
							<div class="field">
								<input id="user-log" name="user-log" class="form-control" type="text" placeholder="Username or email">
								<i class="fa fa-user user"></i>
							</div>
							<div class="field">
								<input id="password-log" name="password-log" class="form-control" type="password" placeholder="Password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<span class="remember"><input class="labelauty" type="checkbox" data-labelauty="Keep me signed in" checked /></span>
								<button type="button" class="btn btn-reverse button-form">Reset</button>
								<button type="button" class="btn btn-default button-form">Login</button>
							</div>
						</div> <!-- ./login -->
						<div id="sign-in" class="box">
							<h2 class="title">Sign In</h2>
							<h3 class="sub-title">Create a Free account and discover how you can centralize all communication around a transaction, connect with clients, market your listings, and more. </h3>
							<div class="form-inline">
								<div class="form-group">
									<input id="user-sign" name="user-sign" class="form-control input-inline margin-right" type="text" placeholder="Username">
									<i class="fa fa-user user"></i>
								</div>
								<div class="form-group">
									<input id="email-sign" class="form-control input-inline" type="text" name="email-sign" placeholder="Email">
									<i class="fa fa-envelope-o"></i>
								</div>
							</div>
							<div class="field">
								<input id="password-sign" class="form-control" type="password" name="password-sign" placeholder="Password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field">
								<input id="re-password-sign" class="form-control" type="password" name="re-password-sign" placeholder="Repeat password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<span class="remember"><input class="labelauty" type="checkbox" data-labelauty="I have read the privacy policy." checked /></span>
								<button type="button" class="btn btn-default button-form">Sign in</button>
							</div>
						</div><!-- ./sign-in -->
						<div id="setting" class="box">
							<h2 class="title">Setting profile</h2>
							<h3 class="sub-title">Please note: You won't be able to change your name within the next 60 days. Make sure that you don't add any unusual capitalisation, punctuation, characters or random words. <a href="#">Learn more</a>.</h3>
							<div class="field">
								<input id="username-block" class="form-control" type="text" name="username-block" value="John Doe" disabled>
								<i class="fa fa-user user"></i>
							</div>
							<div class="field">
								<input id="email-setting" class="form-control" type="text" name="email-setting" value="administrator@prohome.com">
								<i class="fa fa-envelope-o"></i>
							</div>
							<div class="field">
								<input id="update-pass" class="form-control" type="password" name="update-pass" placeholder="New password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field">
								<input id="update-repass" class="form-control" type="password" name="update-repass" placeholder="Repeat password">
								<i class="fa fa-ellipsis-h"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-reverse button-form">Cancel</button>
								<button type="button" class="btn btn-default button-form">Update</button>
							</div>
						</div><!-- ./recovery -->
						<div id="recovery" class="box">
							<h2 class="title">Need a new password?</h2>
							<h3 class="sub-title">Enter your email address, and we’ll email you instructions to reset your password.</h3>
							<div class="field">
								<input id="recovery-email" class="form-control" type="text" name="recovery-email" placeholder="Your email">
								<i class="fa fa-envelope-o"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-default button-form">Recovery</button>
							</div>
						</div><!-- ./recovery -->
					</form><!-- ./form-container -->
				</div><!-- ./login-button-container -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->

		<div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>

				<div class="form-container full-fixed">
					<form method="post" action="#">
						<div id="form-modal-contact" class="box active modal-contact">
							<h2 class="title">How can we help?</h2>
							<h3 class="sub-title">Please send us your thoughts by filling out the below form. Comments are solely for internal use. Your address will not be shared with outside parties or used for any other purpose than to respond to your comments.</h3>
							<ul class="object-contact">
								<li><a href="#"><i class="fa fa-code"></i>Suggestion</a></li>
								<li><a href="#"><i class="fa fa-question"></i>Question</a></li>
								<li><a href="#" class="active"><i class="fa fa-bug"></i>Problems</a></li>
								<li><a href="#"><i class="fa fa-comment-o"></i>Feedback</a></li>
							</ul>
							<div class="field">
								<textarea class="form-control" name="message" id="message" placeholder="Your message"></textarea>
							</div>
							<div class="field">
								<input id="short-summary" class="form-control" type="text" name="short-summary" placeholder="Short summary">
								<i class="fa fa-tag"></i>
							</div>
							<div class="field">
								<input id="email-help" class="form-control" type="text" name="email-help" placeholder="Your email">
								<i class="fa fa-envelope-o"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-reverse button-form">Cancel</button>
								<button type="button" class="btn btn-default button-form">Send</button>
							</div>

						</div>
					</form>
				</div>


			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</div><!-- /#page-container -->

	<script	src="script/jquery.min.js"></script>		<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
	<script	src="script/jquery-ui.min.js"></script>		<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
	<script	src="script/bootstrap.min.js"></script>		<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script	src="script/vendor/mmenu/mmenu.min.all.js"></script>					<!-- Menu Responsive -->
	<script	src="script/vendor/animation-wow/wow.min.js"></script>					<!-- Animate Script	-->
	<script src="script/vendor/labelauty/labelauty.min.js"></script>					<!-- Checkbox Script -->
	<script	src="script/vendor/parallax/parallax.min.js"></script>						<!-- Parallax Script -->
	<script	src="script/vendor/images-fill/imagesloaded.min.js"></script>			<!-- Loaded	image with ImageFill -->
	<script src="script/vendor/images-fill/imagefill.min.js"></script>					<!-- ImageFill Script -->
	<script	src="script/vendor/easydropdown/jquery.easydropdown.min.js"></script>	<!-- Select	list Script	-->

	<script	src="script/custom.js"></script>		<!-- Custom	Script -->

  </body>
</html>