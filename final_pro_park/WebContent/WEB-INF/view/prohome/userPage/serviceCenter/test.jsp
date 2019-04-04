<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>




<html lang="ko" class="body_extend">
<head>
<meta charset="UTF-8">

<title>아이디찾기 - 11번가</title>
	<meta name="description" content="Upgrade Your Life - 11번가">
	<meta name="keywords" content="Upgrade Your Life - 11번가">
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">




<script type="text/javascript" src="//www.11st.co.kr/html/experiment/experimentMetaInfo.js"></script>

<script type="text/javascript" src="//www.11st.co.kr/js/plab/plab-web-sdk-0.9.1.min.js"></script>
<script>

    var plabPageKey = 'null';
    try{

        var params = {
            projectKey : "11st_web",
            domain : "11st.co.kr"
        };
        plab.initBy(params, experimentMetaInfo);

    }catch (e) { console.log(e) };

</script>

<link rel="shortcut icon" href="https://www.11st.co.kr/img/common/icon/favicon.ico">


<script type="text/javascript">

	// Global Var
	var _IMG_PATH_  = "http://www.11st.co.kr";
	var _UPLOAD_IMG_PATH_  = "http://image.11st.co.kr";
	var _SSL_UPLOAD_IMG_PATH_ = "https://www.11st.co.kr/is";
	var _ACTION_CONTEXT_  = "";
	var _FILE_UPLOAD_PATH_ = "http://image.11st.co.kr";
	var _GNB_CONTEXT_PATH_ = "http://www.11st.co.kr";
	var _ACTION_CONTEXT_URL_ = "http://www.11st.co.kr";
	var _SSL_ACTION_CONTEXT_URL_ = "https://www.11st.co.kr";
	var _SSL_IMG_PATH_ = "https://www.11st.co.kr";
	var _GLOBAL_CONTEXT_PATH_ = "http://globalshopping.11st.co.kr";
	var _BEAUTY_CONTEXT_PATH_ = "http://beauty.11st.co.kr";
	var _SOHO_CONTEXT_PATH_ = "http://soho.11st.co.kr";
	var _JS_PATH_ = "http://www.11st.co.kr";

	var _GNB_LOGIN_URL_ = "https://login.11st.co.kr/login/Login.tmall";
	var _GNB_LOGOUT_URL_ = "https://login.11st.co.kr/login/Logout.tmall";
	var _PRODUCT_DETAIL_URL_ = "http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=";

	var _ENJOY_SEARCH_VAR_ = "NONE";
	var _ENJOY_SEARCH_KEY_YN_ = "N";

	var _SELLER_SHOP_DOMAIN_ = "http://shop.11st.co.kr";

	// 변경 권고
	var _CSS_URL_			= "http://c.011st.com";
	var _SSL_CSS_URL_		= "https://www.11st.co.kr";
	var _IMG_URL_			= "http://s.011st.com";
	var _SSL_IMG_URL_		= "https://www.11st.co.kr";
	var _UPLOAD_URL_		= "http://i.011st.com";
	var _SSL_UPLOAD_URL_	= "https://www.11st.co.kr/is";

	var _LOGIN_TARGET_URL_ 	= "https://login.11st.co.kr";

	// TZONE Var
	var _TZONE_URL_			= "http://skt.11st.co.kr";
	var _TZONE_URL_HOME_	= "http://skt.11st.co.kr/html/tzone/tZoneMain.html";
	var _SELLER_URL_		= "http://seller.11st.co.kr";
	var _SOFFICE_URL_		= "http://soffice.11st.co.kr";
	var _DS_URL_			= "http://ds.11st.co.kr";
	var _MY11ST_URL_		= "http://buy.11st.co.kr/order/myTmall.tmall?method=getMyTmallMain";
	var _SHOPPINGCART_URL_ 	= "http://buy.11st.co.kr/cart/CartAction.tmall?method=getCartList";
	var _MYSELL_URL_ 		= "http://soffice.11st.co.kr";
	var _CATEGORY_ACTION_URL_ = "http://www.11st.co.kr/browsing/Category.tmall";
	var _NEW_CATEGORY_ACTION_URL_ = "http://www.11st.co.kr/browsing/DisplayCategory.tmall";
	var _NEW_CATEGORY_DEPTH_ACTION_URL_ = "http://www.11st.co.kr/category/DisplayCategory.tmall";
	var _SEARCH_ACTION_URL_ = "http://search.11st.co.kr/SearchPrdAction.tmall";

	// TOWN 11st
	var _TOWN11ST_URL_ 		= "http://town.11st.co.kr";
	var _TOWN_PRODUCT_DETAIL_URL_ = "http://town.11st.co.kr/town/TownProductDetail.tmall?method=getTownProductDetail&prdNo=";
	var _TOWN_SHOP_URL_ 	= "http://town.11st.co.kr/town/TownShopDetail.tmall?method=getTownShopDetail&shopNo=";
	var _TOWN_DOMAIN_ 		= "http://town.11st.co.kr";
	var _TOWN_SOFFICE_URL_ 	= "http://town.soffice.11st.co.kr";


	// Order 11st
	var _ORDER_IMG_PATH_ 	= "http://buy.11st.co.kr";
	var _ORDER_URL_ 	 	= "http://buy.11st.co.kr";
	var _ORDER_DOMAIN_ 	 	= "http://buy.11st.co.kr";
	var _SSL_ORDER_URL_  	= "https://buy.11st.co.kr";
	var _SSL_ORDER_IMG_PATH_ = "https://www.11st.co.kr";
	var _ORDER_HIS_URL_		= "http://buy.11st.co.kr/order/OrderList.tmall";

	// ShockingDeal 11st (쇼킹딜)
	var _SHOCKING_DEAL_URL_ = "http://deal.11st.co.kr";
	
	var _SRCH_PARAM_DELIMITER_ = "@;";
	
	// 제외 제휴사
	var _EXCEPT_XSITE_LIST_ = "|1000014299|1000107070|1000138417|1000111850|1000336402|1000436475|1000601391|1000951353|1001023201|1001023200|1001023199|1001023198|1001023197|1001023196|1001021054|";		

</script>

<!-- Template Common Start -->

<link rel="stylesheet" type="text/css" href="/css/common/default.css">
<link rel="stylesheet" type="text/css" href="/css/member/member.css">

<script type="text/javascript" src="/js/lib/jquery/jquery-1.7.2.min.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="/js/lib/html5.js"></script>
<![endif]-->
<!--[if lte IE 9]>
<script type="text/javascript" src="/js/lib/placeholders.js"></script>
<![endif]-->

<!-- Template Common End -->

</head>
<body>

<!--// 본문 내용 시작 //-->








<html lang="ko" class="body_extend">
<head>
<title>11번가 로그인 - 아이디찾기</title>











	<script language="javascript">

		function openIpinCheck(){

		

			var popupWindow = window.open( "", "popupCertKey", "top=100, left=200, status=0, width=417, height=490" );
			document.reqiPinForm.target = "popupCertKey";
			document.reqiPinForm.action = 'https://login.11st.co.kr/ipinCert/NiceCheckAuth.tmall';
			document.reqiPinForm.protocol.value = location.protocol;
	        document.reqiPinForm.referer.value = location.hostname;
	        document.reqiPinForm.accUri.value = location.pathname;
			document.reqiPinForm.submit();
			popupWindow.focus();
			
		
			return;
		}
		
		function goIDCheck(){
			openIpinCheck();
		}

	</script>

	<FORM id="reqiPinForm" name="reqiPinForm" method="POST" action="">
		<input type="hidden" name="referer"  value = "">
	    <input type="hidden" name="method"   value = "niceCheckAuth">
	    <input type="hidden" name="protocol" value = "">
	    <input type="hidden" name="accUri"   value = "">
	    <input type="hidden" name="returnURL"   value = "">
	</FORM>

<script type="text/javascript" src="https://www.11st.co.kr/js/common/rsa.js?noCache=1554256700630"></script>
<script type="text/javascript" src="/jsp/ktb/ktb.agent.jsp"></script>
<script type="text/javascript" src="/js/register/personalinformation/jq.form.js"></script>






<script>
    var rakeLogPageInfo = {"Switch":{"LogDisablePageshow":false,"ImpPC":true,"ImpMW":true,"LogDisable":false},"DeviceId":"","AppSessionIdXsite":"","_$RAKE_TOKEN":"871e1b1427359b4f70af57f1b03b1b89becc23d8","DataMerge":false,"AppSessionId":"","PageInfo":{"page_id":"/id_find"},"_$RAKE_TOKEN_NPI":"19df1ef211ac21741c82322a9ffe739b4f5a1519","_$RAKE_ENV":"LIVE"};

    var RakeLoadScript = function() {
        var path = '//www.11st.co.kr/js/rake/rakeLog.js?v=20190328';
        try {
            var element = document.createElement('script');
            element.src = path;
            element.charset = 'euc-kr';
            document.head.appendChild(element);
        } catch(e) {}
    }
</script>
<script src="//www.11st.co.kr/js/rake/Log11stClientSentinelShuttle.js?v=20170808"></script>
<script>
    if (document.addEventListener) {
        document.addEventListener("DOMContentLoaded", RakeLoadScript);
    } else {
        document.attachEvent("onreadystatechange", function() {
            if (document.readyState !== "loading") {
                RakeLoadScript();
            }
        });
    }
</script>


<script type="text/javascript">
function init() {
	$("#radio01").attr('checked',true);
	$("#prvtMemNm01").val('');
	$("#prtblTlphnNo01_2").val('');

	$("#prvtMemNm02").val('');
	$("#emailAddr").val('');

	$("#prvtMemNm03").val('');
	$("#prvtMemIdntyNo").val('');

	$("#radio04").attr('checked',true);
	$("#prvtMemNm04").attr('disabled', false).val('');
	$("#birthDay").attr('disabled', false).val('');
	$("#gender").attr('disabled', false);
	$("#nation").attr('disabled', false);
	$("#phoneCorp").attr('disabled', false);
	$("#prtblTlphnNo04").attr('disabled', false).val('');
	$("#authNumber").attr('disabled', false).val('');

	$(":checkbox").attr("checked",false);

	$("#etprsMemNm").val('');
	$("#etprsMemIdntyNo").val('');
}

function toggleTab(tabId) {
	init();
	if (!tabId) tabId = "tabPrvt";
	else if (tabId.charAt(0)=='#') tabId = tabId.substr(1);
	if (tabId=='tabPrvt'){
		$("#tabPrvt").addClass("on");
		$("#tabBsns").removeClass("on");
		$("#sectionPrvt").show();
		$("#sectionBsns").hide();
	} else if (tabId=='tabBsns'){
		$("#tabPrvt").removeClass("on");
		$("#tabBsns").addClass("on");
		$("#sectionPrvt").hide();
		$("#sectionBsns").show();
	}
	toggleRadio();
}
function toggleFold(selfId,targetId) {
	if($('#'+selfId).text()=="열기") {
		$('#'+targetId).addClass('view');
		$('#'+selfId).text('접기');
	} else {
		$('#'+targetId).removeClass('view');
		$('#'+selfId).text('열기');
	}
}
function toggleRadio() {
	$('input:radio').each(function() {
		var targetId = '#divRadio' + $(this).val();
		if($(this).is(':checked')) $(targetId).addClass('view');
		else $(targetId).removeClass('view');
	});
}
function toggleAllTermsDiv() {
	if( $('#allTermsBtn').text()=='약관 목록 펼치기' ) {
		$('#allTermsDiv').addClass('all_view');
		$('#allTermsBtn').text('약관 목록 접기');
	} else {
		$('#allTermsDiv').removeClass('all_view');
		$('#allTermsBtn').text('약관 목록 펼치기');
	}
}
function popLayerTerm(targetId) {
	LayerFunc(targetId);
	$('#'+targetId).addClass('view');
}
function closeLayerTerm(targetId) {
	$('#'+targetId).removeClass('view');
}
function LayerFunc(targetId) {//layer 위치 자동포지션 func
	var ele = $('#'+targetId);
	var dimH = ele.outerHeight();
	var dimW = ele.outerWidth();
	var h = $(window).height();
	var w = $(window).width();
	var ct = $(window).scrollTop();
	//alert(ct);
	if (ct == 0) {
		ele.css({'marginTop' : -(dimH/2) + 'px','top' : '50%'});
	}
	else {
		ele.css({'marginTop' : -(dimH/2)+ct + 'px','top' : '50%'});
	}
	if (dimW > w) {
		ele.css({'marginLeft' : 0 +'px','left' : 0});
	}
	else {
		ele.css({'marginLeft' : -(dimW/2) + 'px','left' : '50%'});
	}
};
function toggleChkTermsAll() {
	var chk = $('#chkTermsAll').is(':checked');
	$('#agreeInfo').attr('checked',chk);
	$('#agreeTelec').attr('checked',chk);
	$('#agreeService').attr('checked',chk);
}
function uncheckTermsAll() {
	$('#chkTermsAll').attr('checked',false);
}

function fncSearchMemId(searchTyp,searchMemInfoTyp) {
	var memNm = "";
	var prtblTlphnNo = "";
	var emailAddr = "";
	var memIdntyNo = "";

	/* validate start */
	if( searchTyp == '01' ) {
		memNm = jQuery.trim(jQuery("#prvtMemNm"+searchMemInfoTyp).val());
		if( memNm == '' ) {
			alert("이름을 입력해 주세요.");
			jQuery("#prvtMemNm"+searchMemInfoTyp).focus();
			return;
		}

		if( searchMemInfoTyp == '01' ) {//휴대폰
			if( jQuery.trim(jQuery("#prtblTlphnNo01_2").val()) == '' ) {
				alert("휴대폰을 입력해 주세요.");
				jQuery("#prtblTlphnNo01_2").focus();
				return;
			}

			prtblTlphnNo = jQuery("#prtblTlphnNo01_2").val();
			if (prtblTlphnNo.length>7)
				prtblTlphnNo = jQuery.trim(jQuery("#prtblTlphnNo01_1 option:selected").val()+ "-" + prtblTlphnNo.substr(0,4) + "-" + prtblTlphnNo.substr(4));
			else
				prtblTlphnNo = jQuery.trim(jQuery("#prtblTlphnNo01_1 option:selected").val()+ "-" + prtblTlphnNo.substr(0,3) + "-" + prtblTlphnNo.substr(3));
			if( !checkNum(prtblTlphnNo.replace(/-/g, '')) ) {
				alert("휴대폰번호가 유효하지 않습니다. 다시 확인해주세요.");
				jQuery("#prtblTlphnNo01_2").focus();
				return;
			}
		} else if( searchMemInfoTyp == '02' ) {//이메일
			emailAddr = jQuery.trim(jQuery("#emailAddr").val());
			if( emailAddr == '' ) {
				alert("이메일을 입력해 주세요.");
				jQuery("#emailAddr").focus();
				return;
			}
			//이메일체크
			if( !validEmailAddr(emailAddr) ) {
				alert("이메일주소를 정확히 입력해 주세요.");
				jQuery("#emailAddr").focus();
				return;
			}
		} else if( searchMemInfoTyp == '03' ) {//여권번호/외국인등록번호
			memIdntyNo = jQuery.trim(jQuery("#prvtMemIdntyNo").val());
			if( memIdntyNo == '' ) {
				alert("여권번호 또는 외국인등록번호를 입력해 주세요.");
				jQuery("#prvtMemIdntyNo").focus();
				return;
			}
		}
	} else if( searchTyp == "02" ) {
		memNm = jQuery.trim(jQuery("#etprsMemNm").val());
		if( memNm == '' ) {
			alert("상호명을 입력해 주세요.");
			jQuery("#etprsMemNm").focus();
			return;
		}

		memIdntyNo = jQuery.trim(jQuery("#etprsMemIdntyNo").val());
		if( memIdntyNo == '' ) {
			alert("사업자번호를 입력해 주세요.");
			jQuery("#etprsMemIdntyNo").focus();
			return;
		}
		if( !checkNum(memIdntyNo) ) {
			jQuery("#etprsMemIdntyNo").focus();
			return;
		}
	}
	/* validate end */

	jQuery("#searchTyp").val(searchTyp);
	jQuery("#searchMemInfoTyp").val(searchMemInfoTyp);

	if(rsa || typeof(rsa)!=="undefined"){

		try{

			if( searchTyp == '01' ) {
				jQuery("#encMemNm").val(rsa.encrypt(encodeURIComponent(memNm)));
			}else{
				//사업자인 경우는 암호화 하지 않는다.
				jQuery("#encMemNm").val(encodeURIComponent(memNm));
			}

			jQuery("#encPrtblTlphnNo").val(rsa.encrypt(prtblTlphnNo));
			jQuery("#encMemIdntyNo").val(rsa.encrypt(memIdntyNo));
			jQuery("#encEmailAddr").val(rsa.encrypt(emailAddr));
			jQuery("#priority").val(priority);

			jQuery("#prtblTlphnNo").val('');
			jQuery("#memIdntyNo").val('');
			jQuery("#emailAddr").val('');

		}catch(ex){
			LoggingMsg('encrypt 오류');
		}

	}

	goSearchID();
}
function goSearchID() {

	var frm = document.frm;
	frm.action = "https://www.11st.co.kr/register/searchIDResult.tmall?method=getSearchMemId";
	frm.target = "_self";
	frm.method = "post";

	try {
		if( ktb || (typeof ktb !== 'undefined') ) {
			frm.ktb_agent.value = ktb.getScanResult();
		}
	} catch(e) {}

	frm.submit();

}


var authSMSCnt = 0;
var authCnt = 0;
//휴대폰 본인인증 validate
function validationChk() {
	
	if ( jQuery('#prvtMemNm04').val() == "" ) {
		alert("이름이 입력되지 않았습니다.");
		jQuery('#prvtMemNm04').focus();
		return false;
	}
	
	if ( jQuery('#birthDay').val().length != 8 ) {
		alert("생년월일이 입력되지 않았습니다.");
		jQuery('#birthDay').focus();
		return false;
	}
	
	if ( jQuery('#prtblTlphnNo04').val().length < 10 ) {
		alert("휴대폰번호가 입력되지 않았습니다.");
		jQuery('#prtblTlphnNo04').focus();
		return false;
	}

	return true;
}
//휴대폰 본인인증 인증번호 발급
function getMobileAuthKey() {
	if (!validationChk()) return;

	if (authSMSCnt < 1) {
		var url = '/register/getKmcAuthNumberAjax.tmall';
		var memNm = encodeURIComponent(jQuery('#prvtMemNm04').val());
		var birthDay = jQuery('#birthDay').val();
		var gender = jQuery('#gender').val();
		var nation = jQuery('#nation').val();
		var phoneCorp = jQuery('#phoneCorp').val();
		var telNo = jQuery('#prtblTlphnNo04').val();
		var accUri = encodeURIComponent(location.pathname);
		
		jQuery.ajax({
			url: url,
			method: 'POST',
			dataType: "json",
			data : {
				method: 'getKmcAuthNumberAjax',
				memNm: memNm,
				birthDay: birthDay,
				gender: gender,
				nation: nation,
				phoneCorp: phoneCorp,
				telNo: telNo,
				accUri: accUri,
				type: '0'
			},
			success: function(jsonObj) {
				if (jsonObj.result == 'Y') {
					jQuery('#kmcSMSCheck').val(jsonObj.kmcSMSCheck);
					
					jQuery('#check1').val(jsonObj.check1);
					jQuery('#check2').val(jsonObj.check2);
					jQuery('#check3').val(jsonObj.check3);
					
					jQuery('#prvtMemNm04').attr('disabled', true);
					jQuery('#birthDay').attr('disabled', true);
					jQuery('#gender').attr('disabled', true);
					jQuery('#nation').attr('disabled', true);
					jQuery('#phoneCorp').attr('disabled', true);
					jQuery('#prtblTlphnNo04').attr('disabled', true);
					
					alert("휴대폰으로 인증번호가 전송되었습니다");
					
				}else if (jsonObj.result == 'STOP'){
					alert("한국 모바일 인증(주) 시스템 작업으로 인해 " + jsonObj.sStartDtKMC + "분부터\n" +  jsonObj.sEndDtKMC + " 휴대폰 인증 서비스를 일시 중지하오니\n많은 양해 부탁드립니다.");
				}else {
					getSendSMSErrorMsg(jsonObj.resultCode);
					jQuery('#authNumber').val("");
				}
				authSMSCnt=0;
			},
		});
		authSMSCnt++;
	}else {
		alert("휴대폰인증sms 요청중입니다. 잠시만 기다려주세요");
	}
}
function getAuthCheckMobile() {
	if (!validationChk()) return;
	
	if ( jQuery('#kmcSMSCheck').val() == "") {
		alert("인증번호 전송이 되지 않았습니다.");
		jQuery('#authNumber').focus();
		return;
	}
	if ( jQuery('#authNumber').val() == "") {
		alert("인증번호가 입력되지 않았습니다.");
		jQuery('#authNumber').focus();
		return;
	}
	
	if ( !jQuery('#agreeInfo').is(':checked') ) {
		alert("개인정보 이용약관에 동의하셔야 합니다.");
		return false;
	}
	if ( !jQuery('#agreeTelec').is(':checked') ) {
		alert("통신사 이용약관에 동의하셔야 합니다.");
		return false;
	}
	if ( !jQuery('#agreeService').is(':checked') ) {
		alert("서비스 이용약관에 동의하셔야 합니다.");
		return false;
	}
	
	if (authCnt < 1) {
		
		var url = '/register/getKmcAuthNumberAjax.tmall';
		var authNumber= jQuery('#authNumber').val();
		var check1= jQuery('#check1').val();
		var check2= jQuery('#check2').val();
		var check3= jQuery('#check3').val();
		var memNm = encodeURIComponent(jQuery('#prvtMemNm04').val());
		var birthDay = jQuery('#birthDay').val();
		var gender = jQuery('#gender').val();
		var phoneCorp = jQuery('#phoneCorp').val();
		var nation = jQuery('#nation').val();
		var telNo = jQuery('#prtblTlphnNo04').val();
		var accUri = encodeURIComponent(location.pathname);
		
		jQuery.ajax({
			url: url,
			method: 'POST',
			dataType: "json",
			data : {
				method: 'getKmcAuthNumberAjax',
				authNumber: authNumber,
				check1:check1,
				check2:check2,
				check3:check3,
				memNm: memNm,
				birthDay: birthDay,
				gender: gender,
				phoneCorp: phoneCorp,
				nation: nation,
				telNo: telNo,
				accUri: accUri,
				type: '1'
			},
			success: function(jsonObj) {
				if (jsonObj.result == 'Y') {
					
					jQuery("#searchTyp").val("01");
					jQuery("#searchMemInfoTyp").val("");
					jQuery('#tokenKey').val( jsonObj.tokenKey );
					jQuery('#etcTokenKey').val( jsonObj.etcTokenKey);
					jQuery('#searchAuthType').val( 'MOBILE' );
					try {
						if(rsa || typeof(rsa)!=="undefined"){
							jQuery("#priority").val(priority);
						}
					} catch(e) {}
					
					goSearchID();
					
				}else {
					getAuthErrorMsg(jsonObj.resultCode);
					jQuery('#authNumber').val("");
				}
				authCnt=0;
			},
		});
		authCnt++;
	}else {
		getAuthErrorMsg('E11ST006');
	}
}
function getSendSMSErrorMsg(code) {
	
	if (code == 'KISH0001') alert("분실 또는 일시정지 휴대폰 입니다.");
	else if (code == 'KISH0002') alert("사업자(법인) 명의의 휴대폰 입니다.");
	else if (code == 'KISH0003') alert("본인인증에 실패하였습니다.");
	else if (code == 'KISH0004') alert("본인인증에 실패하였습니다.");
	else if (code == 'KISH0005') alert("본인인증에 실패하였습니다.");
	else if (code == 'KISH0006') alert("본인인증에 실패하였습니다.");
	else if (code == 'KISH0008') alert("제한 요금제 가입자 입니다.");
	else if (code == 'KISH0009') alert("선불 휴대폰번호 입니다.");
	else if (code == 'KISH7001') alert("SKT 휴대폰 인증 시스템 작업 중입니다.\n잠시후 이용해주시기 바랍니다.");
	else if (code == 'KISH7002') alert("KT 휴대폰 인증 시스템 작업 중입니다.\n잠시후 이용해주시기 바랍니다.");
	else if (code == 'KISH7003') alert("LG U+ 휴대폰 인증 시스템 작업 중입니다.\n잠시후 이용해주시기 바랍니다.");
	else if (code == 'KISQ9207') alert("일 5회 인증 실패 하였습니다.");
	else if (code == 'KISQ9999') alert("인증번호 발송은 일 10회까지 가능합니다.");
	else alert("통신사의 일시적인 시스템 오류 입니다.");
	
}
//오류로그 처리
function getAuthErrorMsg(code) {
	if (code == 'KIST9999') alert("인증번호가 유효하지 않습니다. 다시 확인해 주세요");
	else if (code == 'KIST9998') alert("인증번호 5회 오류횟수 초과 하였습니다.");
	else if (code == 'E11ST001') alert("오류가 발생했습니다. 새로고침후 다시 시도해주시기 바랍니다.");
	else if (code == 'E11ST002') alert("올바르지 않는 인증 방식입니다. 다시 시도해주십시요.");
	else if (code == 'E11ST003') alert("입력한 정보와 일치하는 회원정보가 없습니다.\n자세한 확인을 위해 휴대폰 인증/아이핀 인증을 통해 아이디 찾기를 진행해 주세요.");
	else if (code == 'E11ST004') alert("오류가 발생했습니다. 새로고침후 다시 시도해주시기 바랍니다.");
	else if (code == 'E11ST005') alert("잠시후에 다시 이용해주세요.");
	else if (code == 'E11ST006') alert("정보 조회중입니다. 잠시만 기다려주세요");
	else if (code == 'E11ST010') alert("이메일 정보가 올바르지 않습니다.");
	else alert("통신사의 일시적인 시스템 오류 입니다.");
}


function setIpinInfo(retCd,message,niceNm,birthday,sex,foreigner,dupeInfo,coInfo,tokenKey,etcTokenKey) {

	if ( retCd == '1' ) {
		// 정상IPIN 조회.
		jQuery("#searchTyp").val("01");
		jQuery("#searchMemInfoTyp").val("");
		jQuery("#tokenKey").val(tokenKey);
		jQuery("#etcTokenKey").val(etcTokenKey);
		jQuery("#priority").val(priority);
		jQuery("#searchAuthTyp").val("IPIN");

		goSearchID();

	} else {
		alert ( message ) ;
	}
}


function validEmailAddr(strValue) {
	var regExp = /^[0-9a-zA-Z][_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;

	//입력을 안했으면
	if(strValue.lenght == 0) {
		return false;
	}
	//이메일 형식에 맞지않으면
	if (!strValue.match(regExp)) {
		return false;
	}
	return true;
}
function checkNum(value) {
	var regExp = /[^0-9]+/g;

	if(regExp.test(value)) {
		alert("숫자만 입력하세요.");
		return false;
	}else{
		return true;
	}
}
function checkNumKeyUp(obj, value) {
		var regExp = /[^0-9]+/g;

		if(regExp.test(value)) {
			var returnStr = "";
			for(var i = 0; i < value.length; i++) {
				if(value.charAt(i) >= '0' && value.charAt(i) <= '9') {
					returnStr += value.charAt(i);
				}
			}
			obj.value = returnStr;
			obj.focus();
		}
	}


function sendRakeLog_Fold(obj) {
	var tmp = jQuery(obj).data("log-body");
	tmp.check_value = (jQuery(obj).text()=="열기") ? "off" : "on";
	jQuery(obj).attr("data-log-body", JSON.stringify(tmp));
	rakeLog.sendRakeLog(obj);
}
function sendRakeLog_Agree(obj) {
	var tmp = jQuery(obj).data("log-body");
	tmp.check_value = (jQuery(obj).text()=="약관 목록 펼치기") ? "off" : "on";
	jQuery(obj).attr("data-log-body", JSON.stringify(tmp));
	rakeLog.sendRakeLog(obj);
}
</script>
</head>

<body onload="toggleTab(location.hash);">
<form name="frm" method="post">

	<input type="hidden" name="searchTyp"			id="searchTyp"			value="01">
	<input type="hidden" name="searchMemInfoTyp"	id="searchMemInfoTyp"	value="01">
	<input type="hidden" name="prtblTlphnNo"		id="prtblTlphnNo">
	<input type="hidden" name="memIdntyNo"			id="memIdntyNo">

	<input type="hidden" name="encMemNm"			id="encMemNm">
	<input type="hidden" name="encPrtblTlphnNo"		id="encPrtblTlphnNo">
	<input type="hidden" name="encMemIdntyNo"		id="encMemIdntyNo">
	<input type="hidden" name="encEmailAddr"		id="encEmailAddr">

	<input type="hidden" name="tokenKey"			id="tokenKey">
	<input type="hidden" name="etcTokenKey"			id="etcTokenKey">

	<input type="hidden" name="searchAuthTyp"		id="searchAuthTyp">
	<input type="hidden" name="ktb_agent"			id="ktb_agent">
	<input type="hidden" name="priority"			id="priority">

	
	<input type="hidden" name="kmcSMSCheck"			id="kmcSMSCheck">
	<input type="hidden" name="check1"				id="check1">
	<input type="hidden" name="check2"				id="check2">
	<input type="hidden" name="check3"				id="check3">
</form>
	<div class="member_wrap">
	<header class="member_header">
		<h1 class="tit">
			<a href="http://www.11st.co.kr/html/main.html" class="sp_login logo_11st_s">11번가</a>
			<span>아이디 찾기</span>
		</h1>
	</header>
	<div class="find_main">
		<ul class="tab">
			<li id="tabPrvt"><a href='#tabPrvt' onclick="toggleTab('tabPrvt');rakeLog.sendRakeLog(this);return false;"
								data-log-actionid-area="tab" data-log-actionid-label="tab" data-log-body='{"btn_name":"개인회원"}'>개인회원</a></li>
			<li id="tabBsns"><a href='#tabBsns' onclick="toggleTab('tabBsns');rakeLog.sendRakeLog(this);return false;"
								data-log-actionid-area="tab" data-log-actionid-label="tab" data-log-body='{"btn_name":"사업자회원"}'>사업자회원</a></li>
		</ul>
		<section id="sectionPrvt" style="display: none;">
			<h2 class="txt_hide">개인회원 아이디찾기</h2>
			
			<div class="comfirm_area first view" id="divFold01">
				<div class="tit_box">
					<h3 class="tit">회원정보 </h3>
					<p>등록된 내 회원정보로 찾을 수 있습니다.</p>
					
					<button type="button" class="sp_login btn_arrow" id='foldBtn01' onclick="toggleFold(this.id,'divFold01');sendRakeLog_Fold(this);"
							data-log-actionid-area="member_info" data-log-actionid-label="more" data-log-body='{"check_value":"off"}'>접기</button>
				</div>
				
				<div class="comfirm_box view" id="divRadio01">
					<div class="radio_box">
						<input type="radio" id="radio01" class="radio" name="searchMemInfoTyp1" value="01" checked onclick="toggleRadio();rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_cellphone">
						<label for="radio01" class="lab">휴대폰으로 찾기</label>
					</div>
					<fieldset class="form_box">
						<legend>휴대폰으로 아이디 찾기 폼</legend>
						<ul class="join_write">
							<li>
								<label for="prvtMemNm01" class="lable_hide">이름</label>
								<input type="text" name="prvtMemNm01" id="prvtMemNm01" class="inp" placeholder="이름" maxlength="100"
										onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','01');}">
							</li>
							<li>
								<div class="phone">
									<label for="prtblTlphnNo01_1" class="lable_hide">휴대폰앞자리</label>
									<select class="select" id="prtblTlphnNo01_1" name="prtblTlphnNo01_1">
										<option value='010'>010</option>
<option value='011'>011</option>
<option value='016'>016</option>
<option value='017'>017</option>
<option value='018'>018</option>
<option value='019'>019</option>
<option value='0130'>0130</option>

									</select>
									<label for="prtblTlphnNo01_2" class="lable_hide">휴대폰번호</label>
									<input type="tel" name="prtblTlphnNo01_2" id="prtblTlphnNo01_2" class="inp" placeholder="- 없이 입력" maxlength="8"
											onkeyup="javascript:checkNumKeyUp(this, this.value);" onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','01');}">
								</div>
							</li>
						</ul>
						<button type="button" class="btn_Atype btn_a" onclick="fncSearchMemId('01','01');rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_cellphone_confirm"><span>확인</span></button>
					</fieldset>
				</div>
				
				<div class="comfirm_box" id="divRadio02">
					<div class="radio_box">
						<input type="radio" id="radio02" class="radio" name="searchMemInfoTyp1" value="02" onclick="toggleRadio();rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_email">
						<label for="radio02" class="lab">이메일로 찾기</label>
					</div>
					<fieldset class="form_box">
						<legend>이메일로 찾기 폼</legend>
						<ul class="join_write">
							<li>
								<label for="prvtMemNm" class="lable_hide">이름</label>
								<input type="text" name="prvtMemNm02" id="prvtMemNm02" class="inp" placeholder="이름" maxlength="100"
										onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','02');}">
							</li>
							<li>
								<label for="emailAddr" class="lable_hide">이메일</label>
								<input type="text" name="emailAddr" id="emailAddr" class="inp" placeholder="이메일" maxlength="100"
										onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','02');}">
							</li>
						</ul>
						<button type="button" class="btn_Atype btn_a" onclick="fncSearchMemId('01','02');rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_email_confirm"><span>확인</span></button>
					</fieldset>
				</div>
				
				<div class="comfirm_box" id="divRadio03">
					<div class="radio_box">
						<input type="radio" id="radio03" class="radio" name="searchMemInfoTyp1" value="03" onclick="toggleRadio();rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_passport_foreigner_number">
						<label for="radio03" class="lab">여권번호 혹은 외국인등록번호로 찾기</label>
					</div>
					<fieldset class="form_box">
						<legend>여권번호 혹은 외국인등록번호로 아이디 찾기 폼</legend>
						<ul class="join_write">
							<li>
								<label for="prvtMemNm03" class="lable_hide">이름</label>
								<input type="text" name="prvtMemNm03" id="prvtMemNm03" class="inp" placeholder="이름" maxlength="100"
										onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','03');}">
							</li>
							<li>
								<label for="prvtMemIdntyNo" class="lable_hide">여권번호 혹은 외국인등록번호</label>
								<input type="text" id="prvtMemIdntyNo" class="inp" placeholder="여권번호 혹은 외국인등록번호" maxlength="13"
										onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('01','03');}">
							</li>
						</ul>
						<button type="button" class="btn_Atype btn_a" onclick="fncSearchMemId('01','03');rakeLog.sendRakeLog(this);"
								data-log-actionid-area="member_info" data-log-actionid-label="way_passport_foreigner_number_confirm"><span>확인</span></button>
					</fieldset>
				</div>
			</div>
			
			<div class="comfirm_area" id="divFold02">
				<div class="tit_box">
					<h3 class="tit">본인인증</h3>
					<p>회원정보로 찾기 어렵다면 본인인증으로 찾을 수 있습니다.</p>
					
					<button type="button" class="sp_login btn_arrow" id='foldBtn02' onclick="toggleFold(this.id,'divFold02');sendRakeLog_Fold(this);"
							data-log-actionid-area="login_certification" data-log-actionid-label="more" data-log-body='{"check_value":"off"}'>열기</button>
				</div>
				
				<div class="comfirm_box view" id="divRadio04">
					<div class="radio_box">
						<input type="radio" id="radio04" class="radio" name="searchMemInfoTyp1_2" value="04" checked onclick="toggleRadio();rakeLog.sendRakeLog(this);"
							   data-log-actionid-area="login_certification" data-log-actionid-label="way_cellphone">
						<label for="radio04" class="lab">휴대폰 본인인증으로 찾기</label>
					</div>
					<fieldset class="form_box">
						<legend>휴대폰 본인인증으로 아이디 찾기 폼</legend>
						<ul class="join_write">
							<li>
								<label for="prvtMemNm04" class="lable_hide">이름</label>
								<input type="text" id="prvtMemNm04" name="prvtMemNm04" class="inp" placeholder="이름" maxlength="100">
							</li>
							<li>
								<label for="birthDay" class="lable_hide">생년월일8자리</label>
								<input type="text" id="birthDay" name="birthdate" class="inp" placeholder="생년월일8자리" maxlength="8"
										onkeyup="javascript:checkNumKeyUp(this, this.value);">
							</li>
							<li>
								<div class="select_gender">
									<label for="gender" class="lable_hide">성별</label>
									<select class="select" id="gender" name="gender">
										<option value="0" selected="selected">남</option>
										<option value="1">여</option>
									</select>
								</div>
								<div class="select_nation">
									<label for="nation" class="lable_hide">가입유형</label>
									<select class="select" name="nation" id="nation">
										<option value="0" selected="selected">내국인</option>
										<option value="1">외국인</option>
									</select>
								</div>
							</li>
							<li>
								<div class="phone">
									<label for="phoneCorp" class="lable_hide">통신사</label>
									<select class="select" id="phoneCorp">
										<option value='SKT'>SKT</option>
<option value='KTF'>KT</option>
<option value='LGT'>LG U+</option>
<option value='SKM'>SKT알뜰폰</option>
<option value='KTM'>KT알뜰폰</option>
<option value='LGM'>LG U+알뜰폰</option>

									</select>
									<label for="prtblTlphnNo04" class="lable_hide">휴대폰번호</label>
									<input type="tel" name="prtblTlphnNo04" id="prtblTlphnNo04" class="inp" placeholder="- 없이 입력" maxlength="11"
											onkeyup="javascript:checkNumKeyUp(this, this.value);">
									<button type="button" class="btn_Btype btn_c" onclick="getMobileAuthKey();"><span>인증번호전송</span></button>
								</div>
							</li>
							<li>
								<label for="authNumber" class="lable_hide">인증번호</label>
								<input type="text" name="authNumber" id="authNumber" class="inp" placeholder="인증번호 입력" maxlength="6"
										onkeyup="javascript:checkNumKeyUp(this, this.value);">
							</li>
						</ul>
						
						<div id="allTermsDiv" class="join_agree first">
							<h2 class="tit">이용동의</h2>
							<div class="chk_box">
								<input type="checkbox" id="chkTermsAll" class="chk" onclick="toggleChkTermsAll();">
								<label for="chkTermsAll" class="lab">이용 약관에 모두 동의 <em class="import">필수</em></label>
								<button type="button" id="allTermsBtn" class="btn_all" onclick="toggleAllTermsDiv();sendRakeLog_Agree(this);"
										data-log-actionid-area="login_certification" data-log-actionid-label="agree_all_check" data-log-body='{"check_value":"off"}'>약관 목록 펼치기</button>
							</div>
							<ul class="agree_list">
								<li>
									<div class="chk_box_s">
										<input type="checkbox" id="agreeInfo" class="chk" onclick="uncheckTermsAll();">
										<label for="agreeInfo" class="lab">개인정보 이용동의</label>
										<a href="#" class="btn_detail" onclick="popLayerTerm('layerAgreeInfo');return false;">약관보기</a>
									</div>
									
									<div id="layerAgreeInfo" class="laypop_terms">
										<h3 class="tit">개인정보 이용동의</h3>
										<iframe src="/jsp/register/kmc/KMCAgreeInfo.jsp" frameborder="0" scrolling="no" class="ifrm_rules" title="개인정보 이용동의"></iframe>
										<button type="button" class="btn_close" onclick="closeLayerTerm('layerAgreeInfo');">닫기</button>
									</div>
								</li>
								<li>
									<div class="chk_box_s">
										<input type="checkbox" id="agreeTelec" class="chk" onclick="uncheckTermsAll();">
										<label for="agreeTelec" class="lab">통신사 이용약관</label>
										<a href="#" class="btn_detail" onclick="popLayerTerm('layerAgreeTelec');return false;">약관보기</a>
									</div>
									
									<div id="layerAgreeTelec" class="laypop_terms">
										<h3 class="tit">통신사 이용약관</h3>
										<iframe src="/jsp/register/kmc/KMCAgreeTelec.jsp" frameborder="0" scrolling="no" class="ifrm_rules" title="통신사 이용약관"></iframe>
										<button type="button" class="btn_close" onclick="closeLayerTerm('layerAgreeTelec');">닫기</button>
									</div>
								</li>
								<li>
									<div class="chk_box_s">
										<input type="checkbox" id="agreeService" class="chk" onclick="uncheckTermsAll();">
										<label for="agreeService" class="lab">본인인증 서비스 이용약관</label>
										<a href="#" class="btn_detail" onclick="popLayerTerm('layerAgreeService');return false;">약관보기</a>
									</div>
									
									<div id="layerAgreeService" class="laypop_terms">
										<h3 class="tit">본인인증 서비스 이용약관</h3>
										<iframe src="/jsp/register/kmc/KMCAgreeService.jsp" frameborder="0" scrolling="no" class="ifrm_rules" title="본인인증 서비스 이용약관"></iframe>
										<button type="button" class="btn_close" onclick="closeLayerTerm('layerAgreeService');">닫기</button>
									</div>
								</li>
							</ul>
						</div>
						<button type="button" class="btn_Atype btn_a" onclick="getAuthCheckMobile();rakeLog.sendRakeLog(this);"
								data-log-actionid-area="login_certification" data-log-actionid-label="way_cellphone_confirm"><span>확인</span></button>
					</fieldset>
				</div>
				
				<div class="comfirm_box" id="divRadio05">
					<div class="radio_box">
						<input type="radio" id="radio05" class="radio" name="searchMemInfoTyp1_2" value="05" onclick="toggleRadio();rakeLog.sendRakeLog(this);"
							   data-log-actionid-area="login_certification" data-log-actionid-label="way_ipen">
						<label for="radio05" class="lab">아이핀 인증으로 찾기</label>
					</div>
					<div class="ipin_box">
						<a href="javascript:openIpinCheck();" class="btn_Atype btn_a"><span>아이핀 인증</span></a>
					</div>
				</div>
			</div>
		</section>
		<section id="sectionBsns" style="display: none;">
			<h2 class="txt_hide">사업자회원 아이디찾기</h2>
			<p class="txt_desc">가입 시 입력한 상호명, 사업자번호로 아이디를 찾을 수 있습니다.</p>
			<fieldset class="form_box">
				<legend>사업자회원 아이디 찾기 폼</legend>
				<ul class="join_write">
					<li>
						<label for="etprsMemNm" class="lable_hide">상호명</label>
						<input type="text" name="etprsMemNm" id="etprsMemNm" class="inp" placeholder="상호명" maxlength="100"
								onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('02','');}">
					</li>
					<li>
						<label for="etprsMemIdntyNo" class="lable_hide">사업자번호</label>
						<input type="text" name="etprsMemIdntyNo" id="etprsMemIdntyNo" class="inp" placeholder="사업자번호" maxlength="20"
								onkeyup="javascript:checkNumKeyUp(this, this.value);" onkeydown="javascript: if (event.keyCode == 13) {fncSearchMemId('02','');}">
					</li>
				</ul>
				<button type="button" class="btn_Atype btn_a" onclick="fncSearchMemId('02','');rakeLog.sendRakeLog(this);"
						data-log-actionid-area="business_member" data-log-actionid-label="confirm"><span>확인</span></button>
			</fieldset>
		</section>
	</div>
</div>
</body>
</html>

<!--// 본문 내용 끝 //-->

</body>
</html>
<!-- login_template -->
