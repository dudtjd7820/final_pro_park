<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>PROHOME - Responsive Real Estate Template</title>

	<link rel="stylesheet" href="../../../resources/prohome/css/bootstrap.min.css">                            <!-- Bootstrap -->
    <link rel="stylesheet" href="../../../resources/prohome/css/vendor/font-awesom/css/font-awesome.min.css">  <!-- Font Awesome -->
	<link rel="stylesheet" href="../../../resources/prohome/css/vendor/mmenu/jquery.mmenu.all.css" />          <!-- Menu Responsive -->
	<link rel="stylesheet" href="../../../resources/prohome/css/vendor/animate-wow/animate.css">               <!-- Animation WOW --> 

    <link rel="stylesheet" href="../../../resources/prohome/css/vendor/labelauty/labelauty.css">               <!-- Checkbox form Style -->
	<link rel="stylesheet" href="../../../resources/prohome/css/vendor/nouislider/nouislider.min.css">         <!-- Slider Price -->
    <link rel="stylesheet" href="../../../resources/prohome/css/vendor/easydropdown/easydropdown.css">         <!-- Select form Style -->
    <link rel="stylesheet" href="../../../resources/prohome/css/ui-spinner.css">                               <!-- Spinner -->

	<link rel="stylesheet" href="../../../resources/prohome/css/menu.css">                                     <!-- Include Menu stylesheet -->
	<link rel="stylesheet" href="../../../resources/prohome/css/custom.css">                                   <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="../../../resources/prohome/css/media-query.css">                              <!-- Media Query  -->

	<!-- Use Iconifyer to generate all the favicons and touch icons you need: http://iconifier.net -->
	<link rel="shortcut icon" href="../../../resources/prohome/images/favicon/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="../../../resources/prohome/images/favicon/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="../../../resources/prohome/images/favicon/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="../../../resources/prohome/images/favicon/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="../../../resources/prohome/images/favicon/apple-touch-icon-76x76.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="../../../resources/prohome/images/favicon/apple-touch-icon-114x114.png" />
	<link rel="apple-touch-icon" sizes="120x120" href="../../../resources/prohome/images/favicon/apple-touch-icon-120x120.png" />
	<link rel="apple-touch-icon" sizes="144x144" href="../../../resources/prohome/images/favicon/apple-touch-icon-144x144.png" />
	<link rel="apple-touch-icon" sizes="152x152" href="../../../resources/prohome/images/favicon/apple-touch-icon-152x152.png" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

	<script src="../../../resources/prohome/script/modernizr.min.js"></script> <!-- Modernizr -->

  </head>
  
  
  
  <body class="fixed-header">
	
	
	<div id="page-container">
		<header class="menu-color-line" id="header-container-box">	<!--  @@@@@@@@@@@@@@@@@@@@헤더 부분 시작@@@@@@@@@@@@@@@@@@@@-->
		
		<!--  @@@@@@@@@@@@@@@@@@@@인포 부분 시작@@@@@@@@@@@@@@@@@@@@-->
			<div class="info"><!-- info -->
				<div class="container">
					<div class="row">
						<a id="mobile-menu-button" href="#mobile-menu" class="visible-xs"><i class="fa fa-bars"></i></a>
						<div class="col-md-2 logo-withe">
							<a href="usermain.park"><img src="../../../resources/prohome/images/logo_x1_w.png" alt="Logo" /></a>
						</div><!-- /.logo -->
						<div class="col-md-10 hidden-xs" id="login-pan">
							<a href="call:1-800-555-1234"><i class="icon fa fa-phone"></i> (011)-8800-555</a>
							<a class="hidden-sm" data-section="modal-contact" data-target="#modal-contact" data-toggle="modal" href="#"><i class="icon fa fa-envelope-o"></i> Info</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="sign-in"><i class="icon fa fa-pencil-square-o"></i> Sign up</a>
							<a href="#" data-toggle="modal" data-target=".login-modal" data-section="login"><i class="icon fa fa-user user"></i> Login</a>
						</div>
					</div>
				</div>			
			</div><!-- /.info -->	
			
			<div class="container" id="menu-nav">	<!--  @@@@@@@@@@@@@@@@@@@@메뉴 부분 시작@@@@@@@@@@@@@@@@@@@@-->
				<nav id="navigation">
					<ul>
						<li class="has_submenu">
							<a href="#">회사</a>
							<ul>
								<li><a href="index-property-slide.html">회사소개</a></li>
								<li><a href="index-property-slide.html">제휴안내</a></li>
								<li><a href="index-property-slide.html">찾아오는길</a></li>
							</ul>
						</li>
						
						<li class="has_submenu">
							<a href="#">제휴사</a>
							<ul>
								<li><a href="new-property.html">제휴사 리스트</a></li>
								<li><a href="new-property.html">제휴사 위치보기</a></li>
								<li><a href="new-property.html">주차장 후기</a></li>
							</ul>
						</li>
						
						<li class="has_submenu">
							<a href="#">사용자메뉴</a>
							<ul>
								<li><a class="has_submenu">나의정보</a></li>
								<li><a class="has_submenu">사용이력</a></li>
								<li><a class="has_submenu">1:1 문의내역</a></li>
								<li><a class="has_submenu">내가쓴글</a></li>
							</ul>
						</li>
						
						<li class="has_submenu">
							<a href="#">결제</a>
							<ul>
								<li><a href="create-agency.html">결제하기(충전하기)</a></li>
								<li><a href="create-agency.html">결제이력</a></li>
								<li><a href="create-agency.html">결제취소</a></li>
							</ul>
						</li>
						
						<li class="has_submenu">
							<a href="#">예약</a>
							<ul>
								<li><a href="invoice-print.html">예약하기</a></li>
								<li><a href="invoice-print.html">예약 수정/취소하기</a></li>
								<li><a href="invoice-print.html">예약이력</a></li>
								<li><a href="invoice-print.html">예약현황보기</a></li>
							</ul>
						</li>
						
						<li class="current-menu-item has_submenu">
							<a href="#">고객센터</a>
							<ul>
								<li><a href="id_pw_find.park">아이디/비밀번호 찾기</a></li>	
								<li><a href="notice.park">공지사항</a></li>	
								<li><a href="question.park">질문게시판</a></li>	
								<li><a href="free.park">자유게시판</a></li>	
								<li><a href="inquiry.park">1:1문의</a></li>	
								<li><a href="contact.park">제휴문의</a></li>	
							</ul>
						</li>
						
					</ul>
				</nav>
			</div> <!--  @@@@@@@@@@@@@@@@@@@@메뉴 부분 시작@@@@@@@@@@@@@@@@@@@@-->
			
			<a href="#" class="fixed-button top"><i class="fa fa-chevron-up"></i></a>
			<a href="#" class="hidden-xs fixed-button email" data-toggle="modal" data-target="#modal-contact" data-section="modal-contact"><i class="fa fa-envelope-o"></i></a>
		</header>	<!--  @@@@@@@@@@@@@@@@@@@@헤더 부분 끝@@@@@@@@@@@@@@@@@@@@-->
		
	</div><!-- /#page-container -->

	<script	src="../../../resources/prohome/script/jquery.min.js"></script>		<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->
	<script	src="../../../resources/prohome/script/jquery-ui.min.js"></script>		<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->
	<script	src="../../../resources/prohome/script/bootstrap.min.js"></script>		<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script	src="../../../resources/prohome/script/vendor/mmenu/mmenu.min.all.js"></script>					<!-- Menu Responsive -->
	<script	src="../../../resources/prohome/script/vendor/animation-wow/wow.min.js"></script>					<!-- Animate Script	-->
	<script src="../../../resources/prohome/script/vendor/labelauty/labelauty.min.js"></script>					<!-- Checkbox Script -->
	<script	src="../../../resources/prohome/script/vendor/parallax/parallax.min.js"></script>						<!-- Parallax Script -->
	<script	src="../../../resources/prohome/script/vendor/images-fill/imagesloaded.min.js"></script>			<!-- Loaded	image with ImageFill -->
	<script src="../../../resources/prohome/script/vendor/images-fill/imagefill.min.js"></script>					<!-- ImageFill Script -->
	<script	src="../../../resources/prohome/script/vendor/easydropdown/jquery.easydropdown.min.js"></script>	<!-- Select	list Script	-->
	<script	src="../../../resources/prohome/script/vendor/noui-slider/nouislider.all.min.js"></script>				<!-- Range Slider -->
	<script	src="../../../resources/prohome/script/vendor/carousel/responsiveCarousel.min.js"></script>		<!-- Carousel Script -->

	<script	src="http://maps.google.com/maps/api/js?sensor=false"></script>		<!--	Google Map -->
	<script	src="../../../resources/prohome/script/vendor/maps/infobox.js"></script>							<!-- InfoBox extends the Google Maps JavaScript API V3 -->
	<script	src="../../../resources/prohome/script/vendor/maps/home-maps.js"></script>							<!-- Custtom Map Color / Box Property -->
	<script	src="../../../resources/prohome/script/vendor/maps/markerclusterer.js"></script>					<!-- The library creates and manages per-zoom-level clusters for large amounts of markers -->

	<script	src="../../../resources/prohome/script/custom.js"></script>		<!-- Custom	Script -->

	<script>
		/* CLOSE SEARCH BOX */
		setTimeout(function(){$('.botton-options').click()}, 4000);
	</script>
	
	<!--  @@@@@@@@@@@@@@@@@@@@모달 ( 로그인 이나 메세지 전화부분눌렀을때 ) 부분 끝 @@@@@@@@@@@@@@@@@@@@-->
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
						<div id="login" class="box"> <!--  @@@@@@@@@@@@@@@@@@@@모달 로그인 시작 @@@@@@@@@@@@@@@@@@@@-->
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
						</div> <!-- ./login --> 	<!--  @@@@@@@@@@@@@@@@@@@@모달 로그인 끝 @@@@@@@@@@@@@@@@@@@@-->
						
						<div id="sign-in" class="box">	<!--  @@@@@@@@@@@@@@@@@@@@모달 회원가입 시작 @@@@@@@@@@@@@@@@@@@@-->
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
						</div><!-- ./sign-in --> <!--  @@@@@@@@@@@@@@@@@@@@모달 회원가입 끝 @@@@@@@@@@@@@@@@@@@@-->
						
						<div id="setting" class="box"> <!--  @@@@@@@@@@@@@@@@@@@@ 프로필 변경 셋팅 시작 @@@@@@@@@@@@@@@@@@@@-->
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
						</div><!-- ./recovery -->	<!--  @@@@@@@@@@@@@@@@@@@@ 프로필 변경 셋팅 끝 @@@@@@@@@@@@@@@@@@@@-->
						
						<div id="recovery" class="box"> <!--  @@@@@@@@@@@@@@@@@@@@ 아이디찾기 ? 비번찾기.시작 @@@@@@@@@@@@@@@@@@@@-->
							<h2 class="title">Need a new password?</h2>
							<h3 class="sub-title">Enter your email address, and we’ll email you instructions to reset your password.</h3>
							<div class="field">
								<input id="recovery-email" class="form-control" type="text" name="recovery-email" placeholder="Your email">
								<i class="fa fa-envelope-o"></i>
							</div>
							<div class="field footer-form text-right">
								<button type="button" class="btn btn-default button-form">Recovery</button>
							</div>
						</div><!-- ./recovery --> <!--  @@@@@@@@@@@@@@@@@@@@ 아이디찾기 비번찾기 끝 @@@@@@@@@@@@@@@@@@@@-->
					</form><!-- ./form-container -->
				</div><!-- ./login-button-container -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal --> <!--  @@@@@@@@@@@@@@@@@@@@모달 ( 로그인 이나 메세지 전화부분눌렀을때 ) 부분 끝 @@@@@@@@@@@@@@@@@@@@-->

	
  </body>
</html>