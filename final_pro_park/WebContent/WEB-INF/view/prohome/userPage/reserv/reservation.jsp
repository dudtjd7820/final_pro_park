<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<%@ include file="../common/header.jsp" %>
<!--  여기 까지가  header.jsp에 들어있다 . header 부분을 잘랐다 . -->

    <link rel="stylesheet" type="text/css" href="../../../../../resources/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../../../../resources/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../../../../../resources/easyui/demo.css">
    <script type="text/javascript" src="../../../../../resources/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../../../../../resources/easyui/jquery.easyui.min.js"></script>

	<div id="page-container">
		
		
		
		
		<section id="header-page" class="header-margin-base">
			<div class="skyline">
				<div data-offset="50" class="p1 parallax"></div>
				<div data-offset="25" class="p2 parallax"></div>
				<div data-offset="15" class="p3 parallax"></div>
				<div data-offset="8"  class="p4 parallax"></div>
				<span class="cover"></span>
				<div class="container header-text">
					<div><h1 class="title">Grid right column</h1></div>
					<div><h2 class="sub-title">Lorem ipsum dolor sitats adipiscing elit justo</h2></div>
				</div>
			</div>
			<div id="breadcrumb">
				<div class="container">
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a></li>
						<li><a href="#">Property</a></li>
						<li class="active">Grid right column</li>
					</ol>
				</div>
			</div><!-- /#breadcrumb -->
			<span class="cover"></span>
		</section><!-- /#header -->

		<section id="grid-content">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-9">
					<!--  여기가 센터 -->
						<div class="row">
					나의예약이력 (현제 예약중인 )
					
<table class="easyui-datagrid"  style="width:800px; height:300px;"
  data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">>
    <thead>
        <tr>
            <th data-options="field:'사용일 -시간',width:200">사용일 -시간</th>
            <th data-options="field:'종료일 -시간',width:200">종료일 -시간</th>
            <th data-options="field:'시용지점',width:200">시용지점</th>
            <th data-options="field:'차감시간',width:100">지역</th>
            <th data-options="field:'차감시간',width:100">차감예상시간</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>001</td><td>name1</td><td>2323</td>
        </tr>
        <tr>
            <td>002</td><td>name2</td><td>4612</td>
        </tr>
    </tbody>
</table>

<br>							
							
							<div class="col-sm-6 col-md-4">
								<div class="box-ads box-grid">
									<a href="property-detail.html" class="hover-effect image image-fill">
										<span class="cover"></span>
										<img src="images/sample/property/p1.jpg" alt="Sample images" />
										<h3 class="title">59 Paterson Ave</h3>
									</a>
									<span class="price">$ 649.500,00</span>
									<span class="address"><i class="fa fa-map-marker"></i> Hoboken, NJ 07030, USA</span>
									<span class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by insages of Lorem Ipsum available, but the majority have suffered alteratiojected humour.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="bed">Beds:</dt><dd><span>5</span></dd>
										<dt class="bath">Baths:</dt><dd><span>8</span></dd>
									</dl>
									<div class="footer">
										<a href="property-detail.html" class="btn btn-default">Read now</a>
									</div>
								</div><!-- ./box-ads -->
							</div><!-- ./col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<div class="box-ads box-grid">
									<a href="property-detail.html" class="hover-effect image image-fill">
										<span class="cover"></span>
										<img src="images/sample/property/p2.jpg" alt="Sample images" />
										<h3 class="title">477 Jersey Ave</h3>
									</a>
									<span class="price">$ 946.500,00</span>
									<span class="address"><i class="fa fa-map-marker"></i> Jersey City, NJ 07302, USA</span>
									<span class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="bed">Beds:</dt><dd><span>4</span></dd>
										<dt class="bath">Baths:</dt><dd><span>2</span></dd>
									</dl>
									<div class="footer">
										<a href="property-detail.html" class="btn btn-default">Read now</a>
									</div>
								</div><!-- ./box-ads -->
							</div><!-- ./col-md-4 -->
							<div class="col-sm-6 col-md-4">
								<div class="box-ads box-grid">
									<a href="property-detail.html" class="hover-effect image image-fill">
										<span class="cover"></span>
										<img src="images/sample/property/p3.jpg" alt="Sample images" />
										<h3 class="title">27 W 17th St</h3>
									</a>
									<span class="price">$ 946.500,00</span>
									<span class="address"><i class="fa fa-map-marker"></i> New York, NY 10011, USA</span>
									<span class="description">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</span>
									<dl class="detail">
										<dt class="status">Status:</dt><dd><span>Sale</span></dd>
										<dt class="area">Area:</dt><dd><span>645m2</span></dd>
										<dt class="bed">Beds:</dt><dd><span>2</span></dd>
									</dl>
									<div class="footer">
										<a href="property-detail.html" class="btn btn-default">Read now</a>
									</div>
								</div><!-- ./box-ads -->
							</div><!-- ./col-md-4 -->
						</div><!-- ./row -->
					</div><!-- ./col-md-9 -->
					<div class="col-sm-4 col-md-3">
					<!--  여기가 우측 사이드 의 레이아웃을 잡아놓은  부분이다 . 우축사이드는 여기에 -->
						<!-- ===================== filter ===================== -->
						<div class="section-title line-style no-margin">
							<h3 class="title"> 필터 </h3>
						</div>
						<div id="filter-box">
							<a href="#" class="filter"> 서울시 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 가산동 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 월드메르디앙 3차 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 시작날짜 2019/3/12 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 종료날짜 2019/3/12 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 시작시간 12:30 <i class="fa fa-times"></i></a>
							<a href="#" class="filter"> 종료시간 18:30 <i class="fa fa-times"></i></a>
							자신이 선택한 메뉴가 여기 입력되게 하고싶다 .
						</div>
						<!-- ===================== SEARCH ===================== -->
						<div class="section-title line-style">
							<h3 class="title">예약 박스 @</h3>
						</div>
						<div class="right-box">
							<div class="row">
								<div class="col-md-12 space-div">
									<label> 빠른예약 @ </label>
									<input class="form-control" type="text" name="keywords" id="keywords" placeholder="Keywords" />
								</div>
								<div class="col-md-12 space- div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- 시 : 도  --</option>
										<option value="brixton">Brixton</option>
										<option value="london">London</option>
										<option value="middlesex">Middlesex</option>
										<option value="stratford">Stratford</option>
										<option value="wembley">Wembley</option>
										<option value="west-norwood">West Norwood</option>
										<option value="westminster">Westminster</option>
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- ##동 --</option>
										<option value="rent">Rent</option>
										<option value="sell">Sell</option>                        
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="">-- 주차장이름 --</option>
										<option value="apartments">Apartments</option>
										<option value="condos">Condos</option>
										<option value="duplex">Duplex</option>
										<option value="houses">Houses</option>
										<option value="offices">Offices</option>
										<option value="retail">Retail</option>
										<option value="villa">Villa</option>                        
									</select>
								</div>
								<div class="col-md-12 space-div">
								<input class="easyui-datetimebox" name="birthday" 
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px">
        <label>-- 시작날짜 시간--</label>
								
									<!-- <select class="dropdown">
										<option value="">-- 시작날짜 시간--</option>
										<option value="Normal">Normal</option>
										<option value="Available">Available</option>
										<option value="Not Available">Not Available</option>
										<option value="Sold">Sold</option>
										<option value="Open House">Open House</option>
									</select> -->
								</div>
								<div class="col-md-12 space-div">
								<input class="easyui-datetimebox" name="birthday" 
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px">
         <label>-- 종료날자 시간 --</label>
									<!-- <select class="dropdown">
										<option value="">-- 종료날자 시간 --</option>
										<option value="Normal">Normal</option>
										<option value="Available">Available</option>
										<option value="Not Available">Not Available</option>
										<option value="Sold">Sold</option>
										<option value="Open House">Open House</option>
									</select> -->
								</div>
								
								<div class="col-md-12 space-div">
									<label>예약사용시간 : 3 hour 30 min</label>
									<div class="slider" id="price-range"></div>
									<div class="price-slider price">
										<span id="price-value-min"></span> 
										<span id="price-value-max"></span>					
									</div>
								</div>
								<div class="col-md-12 space-div">
									<button type="button" class="btn btn-default search-button">예약하기</button>
								</div><!-- ./footer -->
							</div><!-- ./row 2 -->	
						</div><!-- ./vertical-search-container -->	
						<!-- 9. Mortage -->
						<div class="section-title line-style">
							<h3 class="title">Mortgage Calculate</h3>
						</div>
						<div class="mortgage-calculator-box">
							<form method="post" role="form">
								<div class="form-group">
									<label>Sale price ($)</label>
									<input type="text" id="mc-price" class="form-control" placeholder="es: 200000" />
								</div>
								<div class="form-group">
									<label>Down payment (%)</label>
									<input type="text" id="mc-down" class="form-control" placeholder="es: 5" />
								</div>
								<div class="form-group">
									<label>Interest Rate (%)</label>
									<input type="text" id="mc-rate" class="form-control" placeholder="es: 6" />
								</div>
								<div class="form-group">
									<label>Term (years)</label>
									<input type="text" id="mc-term" class="form-control" placeholder="es: 20" />
								</div>
								<button id="mortgage-calc" class="btn btn-reverse" type="button">Calculate</button>
							</form>
							<div class="result-calc" id="mc-payment">$ 0,00</div>
						</div><!-- /.mortgage-calculator -->
					</div><!-- ./col-md-3 -->
				</div><!-- ./row -->
			</div><!-- ./container -->
			<!-- pagination -->	
			<div class="container" id="pagination">
				<div class="row">
					<div class="col-md-9">
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

		</section><!-- /.#masonry-content -->


		<%@ include file ="../common/bottom.jsp" %>
<!--  헤더부분 에 들어있음 . footer 부분자름 -->

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

<!--  여기까지  -->

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
		
		<!--  여기서부터 밑부분 시작 -->
		
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
	<script	src="script/vendor/noui-slider/nouislider.all.min.js"></script>				<!-- Range Slider -->

	<script	src="script/custom.js"></script>		<!-- Custom	Script -->
	<script	src="script/customizer.js"></script>	<!-- Customizer	-->

	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-62553398-1', 'auto');
	  ga('send', 'pageview');
	</script>

  </body>
</html>