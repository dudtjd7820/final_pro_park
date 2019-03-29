<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, park.VO.MemberVO, java.util.Map"%>
<%
	List<MemberVO> memberList = (List<MemberVO>)request.getAttribute("memberList");
	int size = 0;
	if(memberList != null){
		size = memberList.size();
	}
	
	Map<String,Object> rMap = null;
	
%>
<!DOCTYPE html>
<html lang="en">
  <head>
<script type="text/javascript">

//비밀번호 수정하기
	function mem_pwUpdate(){
		$("#f_pwUpd").attr("method","post");
		$("#f_pwUpd").attr("action","mem_pwUpd");
		$("#f_pwUpd").submit();
	}
	
</script>
  </head>
  <body class="fixed-header">

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
					<div><h1 class="title">나의 정보</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor ts adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Pages</a></li>
						<li class="active">User Profile</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="user-profile">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-md-3">
						<!-- . Agent Box -->
						<div class="agent-box-card grey">
							<div class="image-content">
								<div class="image image-fill">
									<img alt="Image Sample" src="http://placehold.it/512/bbbbbb/ffffff">
								</div>
							</div>
							<div class="info-agent">
								<span class="name">사용자 이름 또는 아이디</span>
								<ul class="contact">
									<li><a href="#" class="icon"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" class="icon"><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#" class="icon"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" class="icon"><i class="fa fa-envelope-o"></i></a></li>
									<li><a href="agent-detail.html" class="icon"><i class="fa fa-info-circle"></i></a></li>
								</ul>						
							</div>
						</div>
						<br />
						<ul class="block-menu">
							<li><a class="faq-button active" href="../member/myInfo.park"><i class="icon fa fa-user-secret"></i> 나의정보</a></li>
							<li><a class="faq-button" href="../member/useHistory.park"><i class="icon fa fa-home"></i> 사용이력</a></li>
							<li><a class="faq-button" href="bookmarked.html"><i class="icon fa fa-heart"></i> 1:1문의 내역</a></li>
							<li><a class="faq-button" href="new-property.html"><i class="icon fa fa-plus"></i> 내가 쓴 글</a></li>
						</ul>
					</div>
					<div class="col-sm-8 col-md-9">

						<div class="row">
							<div class="col-md-7">
								<div class="section-title line-style no-margin">
									<h3 class="title">나의 정보</h3>
									<i class="icon fa fa-cog"></i>
								</div>
								<ul class="profile">
									<li class="disabled">
<%
	if(size > 0){
		MemberVO mVO = memberList.get(0);
%>
										<span>아이디</span> 
										<%=mVO.getMem_id() %>
<%-- 										${memberInfo.mem_id} --%>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>이름</span>
										<%=mVO.getMem_name() %>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>포인트</span>
										<%=mVO.getMem_point() %>
										 &bull;&bull;&bull;&bull;&bull;&bull;&bull;&bull;&bull;
										 <i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>등급</span>
										<%=mVO.getMem_grade() %>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>생년월일</span>
										<%=mVO.getMem_birthday() %>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>핸드폰번호</span>
										<%=mVO.getMem_phone() %> 
										<i class="icon fa fa-pencil"></i>
									</li>
									<li>
										<span>이메일</span>
										<%=mVO.getMem_email() %>
									</li>
									<li>
										<span>특이사항</span>
										<%=mVO.getMem_uniqueness() %>
										<i class="icon fa fa-pencil"></i>
									</li>
									<li>
										<span>가입일자</span>
										<%=mVO.getMem_join_date() %>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li class="fullwidth">
										<span>Short About</span> 
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur faucibus dui massa, ac rhoncus nisl blandit in. Sed dapibus vehicula felis, eu tempor odio mollis vitae. Sed sollicitudin nibh quis luctus aliquam.<br /><br />Cras ornare in ligula ut iaculis. Vestibulum ultricies imperdiet tempor. Maecenas at mi eu nunc accumsan ultricies.</p>
										<i class="icon fa fa-pencil"></i>
									</li>
								</ul>
								<br>
								<div align="center">
									<button type="submit" class="btn btn-default" >Save Changes</button>
								</div>
								<div class="section-title line-style">
									<h3 class="title">추가 정보</h3>
									<i class="icon fa fa-cog"></i>
								</div>
								<ul class="profile">
									<li>
										<span>Email</span> 
										admin@prohome.com
										<i class="icon fa fa-pencil"></i>
										<i class="set-privacy fa fa-lock"></i>
									</li>
									<li>
										<span>Skype</span> 
										diane.hayes<i class="icon fa fa-pencil"></i>
									</li>
									<li>
										<span>Phone</span> 
										(011) 265 98745
										<i class="icon fa fa-pencil"></i>
										<i class="set-privacy fa fa-lock"></i>
									</li>
								</ul>
<%
	}
%>								
								<!-- <div class="bs-callout callout-danger">
									<h4 class="title">Nullam sodales lorem sit amet</h4>
									<p class="text">Integer euismod cursus dolor. Curamet pellentesque sed, sodales at augue.</p>
								</div> -->
								<div class="section-title line-style">
									<h3 class="title">비밀번호 변경</h3>
								</div>
								<form id="f_pwUpd" method="post" action="#" class="grey-box">
									<span class="text">
										비밀번호를 변경하고싶으시면 쓰세욤
									</span>
									<input type="password" class="form-control" id="old-password" name="old-password" placeholder="현재 비밀번호">
									<input type="password" class="form-control" id="password" name="password" placeholder="새 비밀번호">
									<input type="password" class="form-control" id="re-password" name="re-password" placeholder="새 비밀번호 재입력">
									<button type="submit" class="btn btn-default" onclick="mem_pwUpdate()">Save Changes</button>								
								</form>
							</div>
							<div class="col-md-5">
								<div class="section-title line-style no-margin space-form">
									<h3 class="title">1:1 문의내역</h3>
									<i class="icon fa fa-cog"></i>
								</div>
								<div class="logs">
									<span class="data"><span>2019-01-02</span></span>
									<div class="log">
										<span class="image image-fill"><img src="C:\\Users\\ksm524\\Desktop\\파이널프로젝트\\images.png\\" alt="Image Sample" /></span>
										<span class="text">
											<strong>[개좋은주차장]  -  [답변대기]<br></strong> 개좋은 주차장이랬는데 개스레기네욘 ^^ 누가가나요? 답변좀 해주실래요?
											<img src="http://placehold.it/116x70/bbbbbb/ffffff" alt="Image Sample" />
											<img src="http://placehold.it/116x70/bbbbbb/ffffff" alt="Image Sample" />
										</span>
										<span class="data">Today 12:30</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>[건의드릴게있는데요]  -  [답변완료]<br></strong>홈페이지 색좀 바꿔주실래요? ㅡㅡ</span>
										<span class="data">Today 10:16</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<span class="data"><span>December 13, 2014</span></span>
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Donec</strong> porta, justo eget fringilla gravida, erat risus pretium eros</span>
										<span class="data">Yesterday 22:42</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Phasellus</strong> rutrum nunc sed dapibus iaculis. Sed at metus et libero convallis mattis id non null.</span>
										<span class="data">Yesterday 16:01</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Donec</strong> porta, justo eget fringilla gravida, erat risus pretium eros</span>
										<span class="data">Yesterday 22:42</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<span class="data"><span>November 30, 2014</span></span>
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Phasellus</strong> rutrum nunc sed dapibus iaculis. Sed at metus et libero convallis mattis id non null.</span>
										<span class="data">Yesterday 16:01</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Donec</strong> porta, justo eget fringilla gravida, erat risus pretium eros</span>
										<span class="data">Yesterday 22:42</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Donec</strong> porta, justo eget fringilla gravida, erat risus pretium eros</span>
										<span class="data">Yesterday 22:42</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Phasellus</strong> rutrum nunc sed dapibus iaculis. Sed at metus et libero convallis mattis id non null.</span>
										<span class="data">Yesterday 16:01</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<div class="log">
										<span class="image image-fill"><img src="http://placehold.it/60/bbbbbb/ffffff" alt="Image Sample" /></span>
										<span class="text"><strong>Donec</strong> porta, justo eget fringilla gravida, erat risus pretium eros</span>
										<span class="data">Yesterday 22:42</span>
										<a href="#"><i class="fa fa-times"></i></a>
									</div><!-- /.log -->
									<input type="button" class="btn btn-default button" value="Load more" />
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>

<%@ include file="../common/bottom.jsp" %>

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