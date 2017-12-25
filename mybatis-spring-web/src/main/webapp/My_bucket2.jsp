<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <meta charset="UTF-8">
	
    <link rel="shortcut icon" type="image/x-icon" href="_resource/images/favicon.ico">
 
    <link href="_resource/css/common.css" rel="stylesheet" />
    <script>
	function load_google() {
	    gapi.client.setApiKey('AIzaSyBySGWNccSTO9XHnlay_kpBHAWUO1-d3L4');
	    gapi.client.load('urlshortener', 'v1',function(){});
	}
   </script>
   <script src="https://apis.google.com/js/client.js?onload=load_google"></script>
<link href="_resource/css/mypage.css" rel="stylesheet" />
<title>Lifeplus Bucket List : 나의 버킷 리스트</title><!-- 2017-03-29 -->



<script>
    var resourcePath = "_resource";
    var webDomain = "http://www.lifeplusbucket.com";
 </script>
</head>
<body>
<div role="status" class="skip-content">
    <p><a href="javascript:void(0);" class="skip-contents">본문 바로가기</a></p>
</div>


<script>
	var isLogin = true;
    var resourcePath = "_resource";
    var webDomain = "http://www.lifeplusbucket.com"; 
    var domainName = "lifeplusbucket.com"; 
    var fbAppId = "803062869828098";
    var nvAppId = "MLj0oi23BbB6Z9PdGctD";
    var kaAppId = "54fdc94fb5308e67bf208e2863485e71";
    var kaAppSecret = "cd1307a27870955ff42db477f3945923";
    var kaAppSecret = "U_2RigbPTb";
    var sslDomain = "https://www.lifeplusbucket.com";
    document.domain="lifeplusbucket.com";

</script>
<script> var isMainAlready = true; </script>

<div id="wrap" class='already'>

    <div id="guide-height-bg"></div>
    <div id="white-dimmed"></div>
    <div id="container" class="fixed-group">
        <div class="gnb_bg"></div>
        



<div class="pop_layer pop_login">
    <div class="pop_inner">
        <a href="javascript:login.closePop();" class="btn_pop_close">
            <img src="_resource/images/register/pop/btn_pop_close.png" alt="">
        </a>
        <div class="login_box">
            <div class="sns_box">
                <h3>SNS 로그인</h3>
                <ul class="reg_ul">
                    <li>
                        <a href="javascript:loginSns('facebook','login');" class="btn_facebook mot3" onclick='eventTrack("", "login_btn_facebook");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">페이스북</span>으로 로그인/회원가입</span>
                            <span class="cursor mot3"></span>
                        </a>
                    </li>
                    <li>
                     <div id="naver_id_login" style="display:none;"></div>
                        <a href="javascript:loginSns('naver','login');"  class="btn_naver mot3" onclick='eventTrack("", "login_btn_naver");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">네이버</span>로 로그인/회원가입</span>
                            <span class="cursor mot3"></span>
                        </a>
                    </li>
                    <li>
                      
                        <a href="javascript:loginSns('kakao','login');" class="btn_kakao mot3" onclick='eventTrack("", "login_btn_kakao");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">카카오</span>로 로그인/회원가입</span>
                            <span class="cursor mot3"></span>
                        </a> 
                    </li>
                </ul>
            </div>
            <div class="email_box">
                <h3>이메일 로그인</h3>
                <div class="input_area">
                    <form action="https://www.lifeplusbucket.com/member/login.do" id="__loginForm__" method="post">
                    	<input type="hidden" name="_returnURL_" id="_returnURL_" value="">
                    	<input type="hidden" name="_sns_type_" id="_sns_type_" value="">
                    	
                    	<input type="hidden" name="_sns_id_" id="_sns_id_" value="">
                    	<input type="hidden" name="_sns_pimage_" id="_sns_pimage_" value="">
                    	<input type="hidden" name="_sns_nm_" id="_sns_nm_" value="">
                    	<input type="hidden" name="_sns_email_" id="_sns_email_" value="">
                         <!-- 20170816_SNS_ADD  -->
                      <input type="hidden" name="_sns_age_" id="_sns_age_" value="">
                      <input type="hidden" name="_sns_birthday_" id="_sns_birthday_" value="">
                      <input type="hidden" name="_sns_gender_" id="_sns_gender_" value="">
                       <!-- 20170816_SNS_ADD  -->
                      	<input type="hidden" name="pcode" id="pcode" value="login">
                    	  <input type="hidden" name="save_email_flg" id="save_email_flg" value="">   
                    	
                    	 
                        <div class="input_box email login_email">
                            <input type="text" placeholder="이메일 주소" name="_login_email_" id="_login_email_" value="" maxlength="35">
                        </div>
                        <div class="input_box password login_password">
                            <input type="password" placeholder="비밀번호" name="_login_passwd_" id="_login_passwd_" onkeypress="checkLoginPassswordKeyPress(event);" maxlength="25">
                        </div>
                    </form>
                </div>
                <a href="javascript:loginInputCheck();" class="btn_login" onclick='eventTrack("", "login_btn_email");'>로그인</a>
                <div class="btn_link">
                    <a href="javascript:void(0);" class="btn_email_save ">이메일 저장</a>
                    
                    <a href="/member/find_password.do" class="btn_pw_find">비밀번호 찾기</a>
                    <a href="/member/email_register.do" class="btn_register" onclick='eventTrack("", "login_btn_register"); NTrackObj.callTrackTag("29443", callbackFn, 11979);'>이메일 회원가입</a>
                </div>

            </div>
        </div>
       
    </div>
</div>
<div class="pop_bg"></div>
 

<script>
function loginInputCheck(){
	if( $("#_login_email_").val() == ""){
		alert("이메일을 입력하세요.");
		return;
	}
	if( $("#_login_passwd_").val() == ""){
		alert("비밀번호를 입력하세요.");
		return;
	}
	
		$.ajax( // 화면의 데이타를 조회한다.
				{
					 
					url:"https://www.lifeplusbucket.com/member/login.do",
					dataType:"jsonp",
					jsonp:"callback",
					type:"POST",
					async:true,
					data:{
						_login_email_:$("#_login_email_").val(),
						_login_passwd_:$("#_login_passwd_").val()
					},
					success:function( data ) {
						if(data.code == "0"){
                            NTrackObj.callTrackTag('29441', callbackFn, 11979);
							$("#__loginForm__").submit();
						}else{
							alert("이메일 주소 또는 비밀번호가 정확하지 않습니다.");
						}
 						
	 				},
					error : function( e ) {
						//alert("조회 오류\n"+e.error);
					}
				}
			);	
	
	
	//$("#__loginForm__").submit();
}
function checkLoginPassswordKeyPress(event){
	   if(window.event){
	      var code = window.event.keyCode;
	   }
	   else{
	      var code = e.charCode;
	   }
		   
 
		 
	if(code == 13){
		loginInputCheck()
	}
}


</script>



        <div class="dumpBannerBox"></div>
        <div id="facebook-banner" class="fixed-group">
            <a href="https://www.lifeplus.co.kr/lifeplusxlcd/" class="banner-copy" target="_blank" onclick='eventTrack("", "clublibday_banner_head");'><!-- 20171109 -->
                 
            </a>
            <a href="#" class="close-btn"><img src="_resource/images/common/banner-close-btn.png"></a>
        </div>
        <div id="header" class="fixed-group">
            <div class="dumpBannerBox"></div>
            <div class="h-members-container">
                <div class="h-members">
                    <div class="h-members-btns">
                    	<!-- 2017-03-13 -->
                        <div class="h-members-sns-btns">
                            <a href="https://www.facebook.com/lifeplus.h/" class="fb" target="_blank" onclick='eventTrack("", "gnb_facebook");' >페이스북</a>
                            <a href="https://www.instagram.com/lifeplus_h/" class="insta" target="_blank" onclick='eventTrack("", "gnb_instagram");'>인스타그램</a>
							<a href="https://www.lifeplus.co.kr" class="lifeplus" target="_blank" onclick='eventTrack("", "gnb_lifeplus");'><img src="_resource/images/gnb/gnb_txt_lifeplus.png"" alt="lifeplus" /></a>
                        </div>
                        <!-- //2017-03-13 -->
                        <div class="h-members-login-btns">
                            
                            <a href="/member/logout.do" class="login">로그아웃</a>
                            <a href="/ln/member/member_info.do" class="regist">회원정보관리</a>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="h-menu-box">
                <a href="/discover/library.do" class="h-logo">
                    <div>
                        <img src="_resource/images/common/logo.png" alt=""/>
                        
                    </div>
                </a>
           
            </div>
        </div>


<script>
function goMyBucket(){
	
	if(!isLogin){
		login.showPop('pop_login',"","http://www.lifeplusbucket.com/ln/mypage/bucket.do");
	}else{
		location.href="/ln/mypage/bucket.do";
	}
}
</script>
   <script src="_resource/js/vendor/makePCookie.js"></script>

<div id="contents">
    <div class="mypage_content">
        <div class="pop_toast">
            버킷리스트가 <span>추가</span>되었습니다!
        </div>
        <div class="top_title">
            <div class="profile_img">
                <img src="_resource/images/register/ico_profile.png" alt="나의이미지" />
            </div>
            <div class="profile_name">
                <span>채홍기</span> 님의 마이페이지 <a href="javascript:Popup.directShareSns('MYBUC','', '', 'http://www.lifeplusbucket.com/_resource/images/common/sns_share_img.jpg');" class="ico"><img src="_resource/images/mypage/ico_circle_share.png" alt="공유" /></a>
            </div>
            <div class="btn_tab_area">
                <a href="Bucket_mypage" class="btn_bucket mot2">
                    버킷리스트 <span>1</span>
                </a>
                <a href="Bucket_mypage_wish" class="btn_wish active mot2">
                    위시리스트 <span>1</span>
                </a>
            </div>
        </div>
		<div class="list_area">
			<!-- 리스트 없을때 -->
			<div class="list_none">
				<div class="ico wish-ico">
					<img src="_resource/images/mypage/ico_wish.png" alt="" />
				</div>
				<div class="sub">아직 추가된 마이 위시 리스트가 없습니다.</div>
				<div class="title">당신만의 <span>위시 리스트</span>를 지금 바로 담아보세요.</div>
				<a href="/discover/featured.do">
					<span class="en">WISH LIST</span> 발견하기
				</a>
			</div>

			<!-- 리스트 있을때 -->
			<ul class="list_box_ul">
			</ul>
			<a href="javascript:void(0);" class="btn_more mot2">더보기</a>
		</div>
    </div>
</div>

<div id="black-dimmed"></div>






<div id="popups" class="fixed-group">

    
    <div id="detail-popup" class="detail-popup popup-group">
        <div class="detail-container">
            <div class="img-container">
                <div class="detail-bg"><img src="_resource/images/discover/library/popup/img-bg.png" alt="" /></div>

                <ul id="detail-img-contents">
                    
                    <li><div class="simple_loading"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></li>
                    <li class="img-box" bucketimage=""></li>
                    <li class="detail-img-shadow"></li>
                    <li class="detail-img-top-shadow"><img src="_resource/images/discover/popup-top-shadow.png" alt="" /></li>
                    <li class="detail-arrow-btns">
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-l.png" alt=""></a>
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-r.png" alt=""></a>
                    </li>
                    <li class="detail-title">
                        <p class="category en" id="popup_detail_category">TRAVEL</p>
                        <p class="title" id="popup_detail_title">마테호른에서 커피 한 잔 하기1</p>
                    </li>
                    <li class="detail-share-btns">
                        <div class="checked-detail-add-btn change-add-check"><img src="_resource/images/discover/etc/add-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-add-btn change-add-btn"><img src="_resource/images/discover/etc/add-btn.png" alt="" /></a>

                        <div class="checked-detail-like-btn change-like-check"><img src="_resource/images/discover/etc/like-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-like-btn change-like-btn"><img src="_resource/images/discover/etc/like-btn.png" alt="" /></a>

                        <a href="#" class="detail-share-btn"><img src="_resource/images/discover/etc/share-btn.png" alt="" /></a>
                        <div class="detail-small-share-btns">
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_twitter.png" alt="" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_kakao.png" alt="" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_facebook.png" alt="" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_close.png" alt="" /></a>
                        </div>
                    </li>
                    <li class="detail-top-btns">
                        <div class="dots">
                            <a href="#" class="active"></a>
                            <a href="#"></a>
                            <a href="#"></a>
                        </div>
                        <a href="#" class="detail-popup-close"><img src="_resource/images/discover/library/popup/close-btn.png" alt="" /></a>
                    </li>
                </ul>
            </div>
            <div class="info-container">
                <div id="info-left">
                    <ul class="info-left-ul">
                        <li class="tags tag-btns-group"  id="popup_detail_tags">
                            <a href="#"><span>#</span>스위스</a>
                            <a href="#"><span>#</span>마테호른</a>
                            <a href="#"><span>#</span>알프스의여왕</a>
                        </li>
                        <li class="desc" id="popup_detail_desc">
                            눈과 얼음으로 뒤덮인 알프스 산맥의 마테호른에 올라 장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다.
                            장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다. 눈과 얼음으로 뒤덮인 알프스 산맥의 마테호른에
                            올라 장엄한 풍경을 바라보면서 여유 있게 커피 한 잔을 즐겨봅니다.
                        </li>
                        <li class="links">
                            <dl id="popup_detail_urls">
                                <dt>관련링크</dt>
                                <dd>알프스 관광청 <a href="#">alps.vvco.kr</a></dd>
                                <dd>마테호른 커피 <a href="#">mathehornecoffee.co.kr</a></dd>
                            </dl>
                        </li>
                    </ul>
                </div>
                <div id="info-right">
                    <ul>
                        <li class="title"><span id="popup_detail_bucket_cnt">300</span>명이 이 버킷 리스트를 함께 합니다.</li>
                        <li class="person-list" id="popup_detail_bucket_list" style="display: none;">
                           
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                        </li>
                        <li class="zero-person-info" style="display: none;">
                            <img src="_resource/images/discover/etc/popup-zero-person-icon.png" alt="" />
                            <div class="desc1">이 버킷 리스트를</div>
                            <div class="desc2">추가한 <span>최초의 1인</span>이 되어 보세요!</div>
                        </li>
                        <li class="info-prev-next">
                            <a href="javascript:Popup.detailBucketList('prev');" class="info-prev"><span>이전</span></a>
                            <div class="info-count en" id="popup_detail_bucket_list_page"><span >1</span> / 0</div>
                            <a href="javascript:Popup.detailBucketList('next');" class="info-next"><span>다음</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    

    
    <div id="person-bucket-popup" class="person-bucket-popup popup-group">
        <div class="person-bucket-container">
             
        </div>
    </div>
    

    
    <div id="featured-gate-popup" class="featured-gate-popup popup-group">
        <div class="gate-popup-box">
            <div class="gate-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="gate-container">

            </div>
        </div>
    </div>
    

    
    <div id="featured-detail-popup" class="featured-detail-popup popup-group">
        <div class="f-detail-popup-box">
            <div class="f-detail-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="f-detail-container">

            </div>
        </div>
    </div>
    

    
    <div id="share-popup" class="share-popup popup-group">
     	<input type="hidden" id="SNS_SHARE_KEY">
     	<input type="hidden" id="SNS_SHARE_MEM_KEY" value="20171205B000010261">
     	<input type="hidden" id="SAVE_SNS_SHARE_KEY">
     	<input type="hidden" id="SAVE_SNS_SHARE_CTGR">
     	<input type="hidden" id="SAVE_SNS_SHARE_TEXT">
     	<input type="hidden" id="SAVE_SNS_SHARE_IMAGE">
     	
        <ul class="share-popup-ul">
            <li class="share-popup-title"><span>채홍기</span> 님의<br> 버킷리스트를 SNS에 공유해보세요.</li>
            <li class="share-popup-info"><span>ㆍ</span> 아래 이미지가 SNS에 공유됩니다.</li>
            <li class="share-popup-img">
                
                <div class="share-popup-contents">
                    <img src="_resource/images/discover/library/share-popup-sample.png"  id="SNS_SHARE_IMAGE"/>
                    <div class="share-popup-dimmed"></div>
                    <div class="share-popup-contents-copy">
                        <p class="en" id="SNS_SHARE_CTGR">SPORTS</p>
                        	<span  id="SNS_SHARE_TEXT">하와이에서 서핑 마스터하기</span>
                    </div>
                </div>
            </li>
            <li class="share-popup-btns">
                <a href="#" class="share-fb">
                    <div>
                        <img src="_resource/images/discover/etc/fb-icon.png" />
                        <img src="_resource/images/discover/etc/fb-icon_on.png" class="on" />
                    </div>
                    페이스북 공유
                </a>
                <a href="#" class="share-tw">
                    <div>
                        <img src="_resource/images/discover/etc/tw-icon.png" />
                        <img src="_resource/images/discover/etc/tw-icon_on.png" class="on" />
                    </div>
                    트위터 공유
                </a>
                <a href="#" class="share-ks">
                    <div>
                        <img src="_resource/images/discover/etc/ks-icon.png" />
                        <img src="_resource/images/discover/etc/ks-icon_on.png" class="on" />
                    </div>
                    카카오스토리 공유
                </a>
            </li>
            <li class="share-popup-close"><a href="#"><img src="_resource/images/discover/share-popup-close.png" /></a></li>
        </ul>
    </div>
    
    
    <div id="user-guide-popup" class="user-guide-popup popup-group">
        <div class="left-contents">
            <div class="title">
                USER<br>
                <span>GUIDE</span>
            </div>
            <div class="desc">
                당신의 가슴을 뛰게 할<br>
                Bucket List를 발견하고,<br>
                삶에 색을 더해보세요.
            </div>
        </div>
        <ul>
            <li>
                <span>01</span>
                <div><img src="_resource/images/discover/etc/popup-user-guide-icon1.png" /></div>
                <dt>탐색해보세요</dt>
                <dd>
                    Lifeplus Bucket List가 제안하는<br>
                    다양한 아이디어들을 탐색해보고
                </dd>
            </li>
            <li>
                <span>02</span>
                <div><img src="_resource/images/discover/etc/popup-user-guide-icon2.png" /></div>
                <dt>발견해보세요</dt>
                <dd>
                    나의 가슴을 뛰게 만드는<br>
                    Bucket List를 발견해보세요.
                </dd>
            </li>
            <li>
                <span>03</span>
                <div><img src="_resource/images/discover/etc/popup-user-guide-icon3.png" /></div>
                <dt>공유해보세요</dt>
                <dd>
                    자랑하고 싶고, 함께하고 싶은<br>
                    Bucket List를 친구들과 공유해보고
                </dd>
            </li>
            <li>
                <span>04</span>
                <div><img src="_resource/images/discover/etc/popup-user-guide-icon4.png" /></div>
                <dt>삶에 더해보세요</dt>
                <dd>
                    나의 Bucket List에 +Add하는 순간,<br>
                    Lifeplus는 시작됩니다.
                </dd>
            </li>
        </ul>
        <div class="user-guide-popup-close">
            <a href="#"><img src="_resource/images/discover/etc/popup-user-guide-close.png" /></a>
        </div>
    </div>
    
    
    <script>
    	function setSnsShareData( sns_share_key,sns_share_ctgr, sns_share_text, sns_share_image){
    	 
    		$("#SNS_SHARE_KEY").val(sns_share_key);
    		$("#SNS_SHARE_CTGR").text(sns_share_ctgr);
    		$("#SNS_SHARE_TEXT").text(sns_share_text);
    		$("#SNS_SHARE_IMAGE").attr("src",sns_share_image);
    		
    		
    	}
    	
    	function setSnsSareSaveData(sns_share_key,sns_share_ctgr, sns_share_text, sns_share_image ){
    		$("#SAVE_SNS_SHARE_KEY").val(sns_share_key);
    		$("#SAVE_SNS_SHARE_CTGR").val(sns_share_ctgr);
    		$("#SAVE_SNS_SHARE_TEXT").val(sns_share_text);
    		$("#SAVE_SNS_SHARE_IMAGE").val(sns_share_image);
    	}
    	function loadSnsShareData(  ){
       	 
    		$("#SNS_SHARE_KEY").val($("#SAVE_SNS_SHARE_KEY").val());
    		$("#SNS_SHARE_CTGR").html($("#SAVE_SNS_SHARE_CTGR").val());
    		$("#SNS_SHARE_TEXT").html($("#SAVE_SNS_SHARE_TEXT").val());
    		$("#SNS_SHARE_IMAGE").attr("src",$("#SAVE_SNS_SHARE_IMAGE").val());
    		
    		
    	}   	
    </script>
    
</div>



        
    </div>
</div>

 
 

 
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="_resource/js/vendor/naverLogin_implicit-1.0.3-my.js" charset="utf-8"></script>

<script type="text/javascript" src="_resource/js/vendor/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>

</body>
</html>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
<!--
Kakao.init('54fdc94fb5308e67bf208e2863485e71');
function sendSns(sns, seq, txt){
	
	if( seq == ""){
		seq = $("#SNS_SHARE_KEY").val();
	}
	if( txt == ""){
		txt = $("#SNS_SHARE_TEXT").text();
	}
	txt="";
	 	var _urls = "http://www.lifeplusbucket.com/discover/library.do?search_param8=";
	    var _url = encodeURIComponent(_urls+seq);
	    var _txt = encodeURIComponent(txt);
	    switch(sns){
	        case 'facebook':
	            var win = window.open('http://www.facebook.com/sharer/sharer.php?u=' + _url);
	            checkPopup(win);
	            break;
	        case 'twitter':
	        	_txt = encodeURIComponent("당신의 가슴을 뛰게 할 Bucket List를 발견해보세요!  ");
	        	 var request = gapi.client.urlshortener.url.insert({
		     	        'resource' : {
		     	            'longUrl' : _urls+seq
		     	        }
		     	    });
		     	    request.execute(function(response) {
		     	        if (response.id != null) {
		     	             
		    	            var win = window.open('http://twitter.com/intent/tweet?text=' + _txt + '&url=' + response.id);
		    	            checkPopup(win);
		     	        } else {
		     	            alert(JSON.stringify(response));
		     	        }
		     	    });
		     	    
	            break;
	        case 'kakaostory':
	   			Kakao.Story.share({ url: _urls+seq, text: txt });
	            break;
	    }
        Popup.saveShareCnt(seq);
	 
}
//-->
 
</script>



<script>
	setGnb(3);

	var mypage_page = 1;

    var $btnMore = $('.btn_more'),
        $popToast = $('.pop_toast'),
        $btnAdd = document.getElementsByClassName('btn_add'),
        $btnDelete = document.getElementsByClassName('btn_delete'),
        $listLi = $('.list_box_ul').find('li'),
        dom = $listLi.clone(),
        listIdx=0;
    

    function addList(){
    	 
     		$.ajax( // 화면의 데이타를 조회한다.
    				{
    					url:"/ln/mypage/wish_fragment_list.do",
    					dataType:"html",
    					type:"POST",
    					async:true,
    					data:{
     						curr_page:mypage_page 
    					},
    					success:function( data ) {
  
    						if( data.trim() == "" && mypage_page != 1 ){
    							alert("더 담겨진 위시 리스트가 없습니다.");
    							return;
    						}else if( data.trim() == "" && mypage_page == 1){
    							$('.list_box_ul').hide();
    							$(".btn_more").hide();
    							$('.list_none').show();
    							return;
    						}else{
    							$('.list_box_ul').show();
    							$('.list_none').hide();	
    							$(".btn_more").show();
    						}
    						
     						mypage_page++;
    			             
    						$('.list_box_ul').append(data);
 
 
    				        $btnAdd = document.getElementsByClassName('btn_add');
    				        $btnDelete = document.getElementsByClassName('btn_delete');
 
    				        for(var i=listIdx;i<$btnAdd.length;i++){
    				        
    				            $btnAdd[i].addEventListener("click", function(){
    				                addCheck($(this));
    				                addDeleteLi($(this));
    				            }, false);

    				            $btnDelete[i].addEventListener("click", function(){
    				                deleteLi($(this));
    				            }, false);
    				        }
    				        listIdx = $btnAdd.length;
    				        
    				        
    				           
    			            
    	 				},
    					error : function( e ) {
    						//alert("조회 오류\n"+e.error);
    					}
    				}
    			);	                
 

    }


    function  complateWish(keyValue){
    	 //alert(keyValue)
     	$.ajax( // 화면의 데이타를 조회한다.
    				{

    					url:"/ln/member/complateWish.do",
    					dataType:"json",
    					type:"POST",
    					async:true,
    					data:{
    						idea_id:keyValue 
    					},
    					success:function( data ) {
    						//alert(data.dataObject.code)

    				        if(thisTarget.hasClass('active')){
    				        	thisTarget.removeClass('active');
    				        }else{
    				        	thisTarget.addClass('active');

    				            $popToast.fadeIn(function(){
    				                setTimeout(function(){
    				                    $popToast.fadeOut();
    				                },700);
    				            });
    				        }
    					},
    					error : function( e ) {
    						//alert("조회 오류\n"+JSON.stringify(e));
    						alert("로그인이 필요한 화면입니다. 로그인해 주세요.")
    					}
    				}
    		);
    	
     }
    function  deleteWish(keyValue){
    	 //alert(keyValue)
    	$.ajax( // 화면의 데이타를 조회한다.
    				{

    					url:"/ln/member/deleteWish.do",
    					dataType:"json",
    					type:"POST",
    					async:true,
    					data:{
    						idea_id:keyValue 
    					},
    					success:function( data ) {
 
    					    
    				        TweenMax.to(thisTarget.parent().parent().parent().parent(), 0.8, {width:0,opacity:0,ease: Power3.easeOut,onComplete:function(){
    				        	thisTarget.parent().parent().parent().parent().hide();
    				        }});
    					},
    					error : function( e ) {
    						//alert("조회 오류\n"+JSON.stringify(e));
    						alert("로그인이 필요한 화면입니다. 로그인해 주세요.")
    					}
    				}
    		);
    	
    }
    var thisTarget;    
 
 
    $btnMore.click(function(){
    	addList();
 
    });

    function addCheck(target){
 
    	//alert(target.attr("key-value"));
    	thisTarget = target;	
    	complateWish(target.attr("key-value"));  	
    	
    	
    }

    function addDeleteLi(target){
    	
        TweenMax.to(target.parent().parent().parent(), 0.8, {width:0,opacity:0,ease: Power3.easeOut,onComplete:function(){
            target.parent().parent().parent().hide();
        }});
    }

    function deleteLi(target){
    	 
    	//alert(target.attr("key-value"));
    	thisTarget = target;	
    	deleteWish(target.attr("key-value"));
    }
    
    addList();

</script>



<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
<!--
Kakao.init('54fdc94fb5308e67bf208e2863485e71');
function sendSns(sns, seq, txt){
	
	if( seq == ""){
		seq = $("#SNS_SHARE_KEY").val();
	}
	if( txt == ""){
		txt = $("#SNS_SHARE_TEXT").text();
	}
	txt="";
	 	var _urls = "http://www.lifeplusbucket.com/discover/library.do?search_param8=";
	    var _url = encodeURIComponent(_urls+seq);
	    var _txt = encodeURIComponent(txt);
	    switch(sns){
	        case 'facebook':
	            var win = window.open('http://www.facebook.com/sharer/sharer.php?u=' + _url);
	            checkPopup(win);
	            break;
	        case 'twitter':
	        	_txt = encodeURIComponent("당신의 가슴을 뛰게 할 Bucket List를 발견해보세요! ");
	        	 var request = gapi.client.urlshortener.url.insert({
		     	        'resource' : {
		     	            'longUrl' : _urls+seq
		     	        }
		     	    });
		     	    request.execute(function(response) {
		     	        if (response.id != null) {
		     	             
		    	            var win = window.open('http://twitter.com/intent/tweet?text=' + _txt + '&url=' + response.id);
		    	            checkPopup(win);

		     	        } else {
		     	            alert(JSON.stringify(response));
		     	        }
		     	    });
		     	    
	            break;
	        case 'kakaostory':
	   			Kakao.Story.share({ url: _urls+seq, text: txt });
	            break;
	    }
        Popup.saveShareCnt(seq);
	 
}
//-->
</script> 