<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.util.List,park.VO.ReserveVO" %>    
   
    <%
    List<ReserveVO> reserveList  = (List<ReserveVO>)request.getAttribute("reserveList");
    int size =0;
    if (reserveList!= null){
    	size = reserveList.size();
    }
    %>
        
    
    
    
    
<!DOCTYPE html>
<head>

</head>
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
					
					님의예약이력 (현제 예약중인 )
 <table id="reservation_t" class="easyui-datagrid"  style="width:800px; height:300px;">
    <thead>
        <tr>
         	<th data-options="field:'rrtt_number',width:150">예약번호</th>
            <th data-options="field:'rrtt_expected_start_time',width:150">사용일 -시간</th>
            <th data-options="field:'rrtt_expected_end_time',width:150">종료일 -시간</th>
            <th data-options="field:'rrtt_parking_lot_name',width:100">시용지점</th>
            <th data-options="field:'rrtt_parking_lot_location',width:200">지역</th>
        </tr>
    </thead>
    <tbody>
    <%
	if(size==0){
	%>
        <tr>
				<td rowspan="6">조회결과가 없습니다.</td>
			</tr> 
<%
	}
	else if (size>0){
		for ( int i=0; i<size; i++){
		ReserveVO reserveVO= reserveList.get(i);
%>
<tr>
				<td><%=reserveVO.getrrtt_number() %></td>
				<td><%=reserveVO.getRrtt_expected_start_time() %></td>
				<td><%=reserveVO.getRrtt_expected_end_time() %></td>
				<td><%=reserveVO.getRrtt_parking_lot_name() %></td>
				<td><%=reserveVO.getRrtt_parking_lot_location()%></td>
			</tr>       
<%
		}//////////////end of for
	}
%>

			
    </tbody>
</table> 

<script type="text/javascript">

function getSelections(){
	 var row = $('#reservation_t').datagrid('getSelected');
	 var data;
	     if (row){
        
			data = row.rrtt_number +" &nbsp; "+ row.rrtt_parking_lot_name +" &nbsp; "+ row.rrtt_parking_lot_location
			+"<br>"+" 예약시간 : "+ row.rrtt_expected_start_time
			+"<br>"+" 종료시간 : "+ row.rrtt_expected_end_time;
     	}
	     	$('#data').empty();
	     $('#data').append(data);	

	     	$('#data2').empty();
		     $('#data2').append(data);	
}
</script>

<br>

<button onclick="getSelections()" id="btn" type="button" class="btn btn-default" data-toggle="modal" data-target="#upd-Modal" color=>
  예약 수정
</button>



<!-- Modal -->
<div class="modal fade" id="upd-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel">예약 시간변경 </h4>
      </div>
      <div class="modal-body">
     
        <div id="data">
        	
        </div>
        해당 예약의 변경시간을 선택하세요 
     
     <br>
        변경할 시작시간
        <input class="easyui-datetimebox" name="birthday" 
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px">
     <br>   
        변경할 종료시간
        <input class="easyui-datetimebox" name="birthday" 
        data-options="required:true,showSeconds:false" value="3/4/2010 2:3" style="width:150px">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">변경하기</button>
        <button type="button" class="btn btn-primary">창닫기</button>
        
        
      </div>
    </div>
  </div>
</div>

<button onclick="getSelections()" type="button" class="btn btn-default" data-toggle="modal" data-target="#del-Modal" color="Red">
  예약 삭제
</button>

<script type="text/javascript">
function delreserv(){
	
}
</script>


<!-- Modal -->
<div class="modal fade" id="del-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel">예약 삭제 취소</h4>
      </div>
      <div class="modal-body">
      <div id="data2"></div>
      <br>
      이예약을 취소하기겠습니까?
      
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">삭제하기</button>
        <button type="button" class="btn btn-primary">창닫기</button>
      </div>
    </div>
  </div>
  여긴몰까요 ?
</div>

<br>	
<br>	
<br>		
나의예약이력 (종료된 모든 )
 <table id="reservation end" class="easyui-datagrid"  style="width:800px; height:300px;"
  data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">>
    <thead>
        <tr>
            <th data-options="field:'rrtt_expected_start_time',width:200">사용일 -시간</th>
            <th data-options="field:'rrtt_expected_end_time',width:200">종료일 -시간</th>
            <th data-options="field:'rrtt_parking_lot_name',width:200">시용지점</th>
            <th data-options="field:'rrtt_parking_lot_location',width:100">지역</th>
            <th data-options="field:'차감시간',width:100">이행 여부</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td><td>name1</td><td>2323</td>
        </tr>
        <tr>
            <td>002</td><td>name2</td><td>4612</td>
        </tr>
    </tbody>
</table> 




							
							
							
						</div><!-- ./row -->
					</div><!-- ./col-md-9 -->
					<div class="col-sm-4 col-md-3">
					<!--  여기가 우측 사이드 의 레이아웃을 잡아놓은  부분이다 . 우축사이드는 여기에 -->
						<!-- ===================== filter ===================== -->
						<div class="section-title line-style no-margin">
							<h3 class="title"> 필터 </h3>
						</div>
						<div id="filter-box">
							<a id="filter_loc" class="filter" > loc <i class="fa fa-times"></i></a>
							<a id="filter_gu" class="filter" > gu <i class="fa fa-times"></i></a>
							<a id="filter_city" class="filter"> city <i class="fa fa-times"></i></a>
							<br>
							<a id="filter_point" class="filter"> point <i class="fa fa-times"></i></a>
							<br>
							<a id="filter_starttime" class="filter"> 시작날짜 <i class="fa fa-times"></i></a>
							<br>
							<a id="filter_endtime" class="filter"> 종료날짜  <i class="fa fa-times"></i></a>
						</div>
						<!-- ===================== SEARCH ===================== -->
						 
						<script type="text/javascript">
						
						
						
								function setfilter(){
									var f_loc = $("#select_loc option:selected").val();
									$("#filter_loc").text(f_loc);

									var f_city = $("#select_city option:selected").val();
									$("#filter_city").text(f_city);

									var f_gu = $("#select_gu option:selected").val();
									$("#filter_gu").text(f_gu);

									var f_point = $("#select_point option:selected").val();
									$("#filter_point").text(f_point);

									var f_starttime = $ ( '#select_starttime'). datetimebox ( 'getValue');
									$("#filter_starttime").text("사용시작시간 : "+f_starttime);

									var f_endtime = $ ( '#select_endtime'). datetimebox ( 'getValue');
									$("#filter_endtime").text("사용종료시간 : "+f_endtime);

									 var startDate = new Date(f_starttime);
									 var endDate  = new Date(f_endtime);

									 var tmp = (endDate.getTime() - startDate.getTime()) / 60000;
									 var hour = Math.ceil(tmp/60) ;
									 var min = Math.ceil(tmp%60);

									 var time = " 예약사용시간 : " + hour +" 시간 "+ min + " 분 "
									 
									 $("#usetime").text(time);
									}

								</script>
						
						<!--  빠른예약 - 필터 이벤트 처리 . ^ -->
						
						<div class="section-title line-style">
							<h3 class="title">예약 박스 @</h3>
						</div>
						<div class="right-box">
							<div class="row">
								<div class="col-md-12 space-div">
									<label> 빠른예약 @ </label>
									
								
								</div>
								<div class="col-md-12 space- div">
									<select id="select_loc" name="loc" class="dropdown" onchange="setfilter()" data-settings='{"cutOff": 5}'>
										<option value="시 : 도"> 시 : 도</option>
										<option value="서울시 ">서울시 </option>
										<option value="london">London</option>
										<option value="middlesex">Middlesex</option>
										<option value="stratford">Stratford</option>
										<option value="wembley">Wembley</option>
										<option value="west-norwood">West Norwood</option>
										<option value="westminster">Westminster</option>
									</select>
									
								</div>
								
									<div class="col-md-12 space-div">
									<select id="select_gu" on="" onchange="setfilter()" class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="##구">-- ##구 --</option>
										<option value="구로구 "> 구로구</option>
										<option value="sell">Sell</option>                        
									</select>
								</div>
								
								
								<div class="col-md-12 space-div">
									<select id="select_city" on="" onchange="setfilter()" class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="##동">-- ##동 --</option>
										<option value="구로2동 "> 구로2동</option>
										<option value="sell">Sell</option>                        
									</select>
								</div>
								<div class="col-md-12 space-div">
									<select id="select_point" data-target="setfilter()" onchange="setfilter()" class="dropdown" data-settings='{"cutOff": 5}'>
										<option value="주차장이름">-- 주차장이름 --</option>
										<option value="월드3차주차장">월드3차주차장</option>
										<option value="condos">Condos</option>
										<option value="duplex">Duplex</option>
										<option value="houses">Houses</option>
										<option value="offices">Offices</option>
										<option value="retail">Retail</option>
										<option value="villa">Villa</option>                        
									</select>
								</div>
								
								
								
								<div class="col-md-12 space-div">
								<input id="select_starttime" class="easyui-datetimebox" name="" 
        data-options="required:true,showSeconds:false" value="" style="width:150px">
        <label>-- 시작날짜 시간--</label>
								
									
								</div>
								<div class="col-md-12 space-div">
								<input id="select_endtime"  class="easyui-datetimebox" name="" 
        data-options="required:true,showSeconds:false" value="" style="width:150px">
         <label>-- 종료날자 시간 --</label>
         
          <script>
        $(function(){
            $('#select_starttime').datebox().datetimebox('calendar').calendar({
                validator: function(date){
                    var now = new Date();
                    var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
                    var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate()+5);
                    return d1<=date && date<=d2;
                    
                    
                }
            });
            
            $('#select_endtime').datebox().datetimebox('calendar').calendar({
                validator: function(date){
                    var now = new Date();
                    var d1 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
                    var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate()+5);
                    return d1<=date && date<=d2;
                    
                    
                }
            });
            
        });
        
    </script>
									
									
								</div>
								
								<div class="col-md-12 space-div">
									<label id="usetime">예약사용시간 : 0 hour 0 min</label>
									<div class="slider" id="price-range"></div>
									<div class="price-slider price">
										<span id="price-value-min"></span> 
										<span id="price-value-max"></span>					
									</div>
								</div>
								<div  class="col-md-12 space-div">
								
								
								<button onclick="reservaiondata()"  type="button" class="btn btn-default search-button" 
								data-toggle="modal" data-target="#reservaion-Modal">예약하기</button>
								
								</div>
								
								<script type="text/javascript">
							
								function reservaiondata(){
									var data3;

									var f_loc = $("#select_loc option:selected").val();

									var f_city = $("#select_city option:selected").val();

									var f_gu = $("#select_gu option:selected").val();

									var f_point = $("#select_point option:selected").val();

									var f_starttime = $ ( '#select_starttime'). datetimebox ( 'getValue');

									var f_endtime = $ ( '#select_endtime'). datetimebox ( 'getValue');

									 var startDate = new Date(f_starttime);
									 var endDate  = new Date(f_endtime);

									 var tmp = (endDate.getTime() - startDate.getTime()) / 60000;
									 var hour = Math.ceil(tmp/60) ;
									 var min = Math.ceil(tmp%60);

									 var time = " 예약사용시간 : " + hour +" 시간 "+ min + " 분 "

									 data3 = f_loc + f_city + f_gu + f_point +"<br>"+ f_starttime +"<br>"+ f_endtime + "<br>" + time ;

									$('#data3').empty();
							     	$('#data3').append(data3);	
							     
									}
								</script>
								
								<!-- Modal -->
<div class="modal fade" id="reservaion-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        
        <h4 class="modal-title" id="myModalLabel"> 예약 확인 .</h4>
      </div>
      <div class="modal-body">
      
      
      <br>
       이대로 예약 하시겠습니까 ?
      <div id="data3"></div>
      
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">예약</button>
        <button type="button" class="btn btn-primary">창닫기</button>
      </div>
    </div>
  </div>
  여긴몰까요 ?
</div>
								
								
								
								<!-- ./footer -->
								
							</div><!-- ./row 2 -->	
						</div><!-- ./vertical-search-container -->	

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