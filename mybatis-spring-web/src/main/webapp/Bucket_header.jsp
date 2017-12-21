<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="_resource/css/discover.css" rel="stylesheet" />
<link rel="shortcut icon" type="image/x-icon" href="_resource/_web/images/favicon.ico.png">
<link href="_resource/css/common.css" rel="stylesheet" />
<link href="_resource/css/discover.popular.css" rel="stylesheet" />
<link href="_resource/css/discover.featured.css" rel="stylesheet" />
<link href="_resource/css/discover.library.css" rel="stylesheet" />


<body>
<div role="status" class="skip-content">
    <p><a href="javascript:void(0);" class="skip-contents">본문 바로가기</a></p>
</div>


<script>
	var isLogin = true;
    var resourcePath = "_resource";
    var webDomain = "http://localhost:8088/Grap_UI"; 
    var domainName = "lifeplusbucket.com"; 
    var fbAppId = "803062869828098";
    var nvAppId = "MLj0oi23BbB6Z9PdGctD";
    var kaAppId = "54fdc94fb5308e67bf208e2863485e71";
    var kaAppSecret = "cd1307a27870955ff42db477f3945923";
    var kaAppSecret = "U_2RigbPTb";
    var sslDomain = "https://www.lifeplusbucket.com";
    document.domain="localhost:8088/Grap_UI";

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
            <img src="_resource/images/register/pop/btn_pop_close.png" alt="닫기">
        </a>
       
      <div class="text_box">
            <p>
               아직 Grab 회원이 아니신가요?
            </p>
            <span>회원 가입하시고 당신의 삶에 버킷 리스트를 더해 보세요.</span> <a href="/member/email_register.do" class="btn_register mot2" onclick='eventTrack("", "login_btn_register"); NTrackObj.callTrackTag("29443", callbackFn, 11979);'>회원가입</a>
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
							<a href="#" class="lifeplus" target="_blank" onclick='eventTrack("", "gnb_lifeplus");'><img src="_resource/_web/images/favicon.ico.png" alt="Grab" /></a>
                        </div>
                        <!-- //2017-03-13 -->
                       <div class="h-members-login-btns">
                            
                         <!--    <a href="javascript:login.showPop('pop_login');" class="login" onclick="eventTrack(&quot;&quot;, &quot;gnb_login&quot;);">로그인</a>
                            <a href="/member/register.do" class="regist" onclick="eventTrack(&quot;&quot;, &quot;gnb_register&quot;);">회원가입</a>
 							-->                            
                            <a href="/member/logout.do" class="login">로그아웃</a>
                            <a href="/ln/member/member_info.do" class="regist">회원정보관리</a>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="h-menu-box">
                <a href="Bucket_main" class="h-logo">
                    <span>
                        <img src="_resource/_web/images/common/Blogo.png" alt="?"/>
                 
                    </span>
                </a>
                <a href="javascript:void(0);" class="h-menu">
                    <div class="bar1 mot2"></div>
                    <div class="bar2 mot2"></div>
                    <div class="bar3 mot2"></div>
                </a>
                <div class="gnb_menu">
                    <ul class="gnb_menu_ul">
                        <li>
                            <a href="Bucket_main" class="gnb1 mot2" onclick='eventTrack("", "menu_discover");'>
                                <div class="text mot2">
                                    <span class="en mot2">Discover</span><br>
                                    당신의 버킷 리스트를 찾아보세요.
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:goMyBucket();" class="gnb2 mot2" onclick='eventTrack("", "menu_mypage");'>
                                <div class="text mot2">
                                    <span class="en mot2">My Bucket</span><br>
                                    나의 버킷 리스트를 모아보세요.
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                     
                        <li>
                            <a href="Main_bucket" class="gnb4 mot2" onclick='eventTrack("", "menu_about");'>
                                <div class="text mot2">
                                    <span class="en mot2">About</span><br>
                                    <strong>Lifeplus</strong> Bucket List를 소개합니다. <!-- 2017-03-13 -->
                                </div>
                                <div class="ico mot2"></div>
                            </a>
                        </li>
                    </ul>
                    <div class="gnb_info">
                    	<!-- 2017-03-13 -->
                        <ul class="info_ul">
                            <li>
                                <a href="Main" class="btn_lifeplus en" target="_blank" onclick='eventTrack("", "menu_lifeplus");'>Grab</a>
                            </li>
                            <li>
                                <a href="https://www.facebook.com/lifeplus.h/" class="btn_facebook en" target="_blank" onclick='eventTrack("", "menu_facebook");'>FACEBOOK</a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/lifeplus_h/" class="btn_insta en" target="_blank" onclick='eventTrack("", "menu_instagram");'>INSTAGRAM</a>
                            </li>
                        </ul>
                    	<!-- //2017-03-13 -->
                        <div class="copyright">
                            <ul class="side_ul">
                                <li>
                                    <a href="/terms.jsp" onclick='eventTrack("", "menu_terms");'>이용약관</a>
                                </li>
                                <li>
                                    <a href="/privacy.jsp" onclick='eventTrack("", "menu_privacy");'>개인정보 취급방침</a>
                                </li>
                                <!--<li>-->
                                    <!--<a href="#">이메일 문의</a>-->
                                <!--</li>-->
                                <li>
                                    <a href="/faq/faq_list.do" onclick='eventTrack("", "menu_faq");'>자주 묻는 질문</a>
                                </li>
                            </ul>
                            <div class="copy_img">
                                <img src="_resource/_web/images/common/mini_logo.png" alt="KH taem. All rights reserved.">
                            </div>
                            <ul class="text_ul">
                                <li>
                                    KH 주식회사
                                </li>
                                <li>
                                    대표이사 강범진
                                </li>
                                <li>
                                    사업자등록번호 123-12-12345
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
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

<!--NSmart Track Tag Script-->
<script type='text/javascript'>
    callbackFn = function() {};
    var _nsmart = _nsmart || [];
    _nsmart.host = _nsmart.host || (('https:' == document.location.protocol) ? 'https://' : 'http://');
    _nsmart.push([11979, 29407]); // 캠페인 번호와 페이지 번호를 배열 객체로 전달
    document.write(unescape("%3Cscript src='" + _nsmart.host + "n00.nsmartad.com/etc?id=10' type='text/javascript'%3E%3C/script%3E"));
</script>
<!--NSmart Track Tag Script End..-->



<div id="h-empty-box"></div>
<div id="md-discover">
    <div class="md-bg">
        <video class="use_gpu" src="_resource/video/discover_main_loop.mp4" width="1920" height="293" loop autoplay></video>
    </div>
    <div class="md-contents">
        <img class="icon" src="_resource/images/discover/pen-icon.png" alt="펜아이콘" />
        <p class="que en">WHAT'S YOUR BUCKETLIST</p>
        <p class="title">당신의 <span>버킷리스트</span>는 무엇인가요?</p>
        <p class="desc">인생 최고의 경험을 당신의 삶에 더해보세요.</p>
        
    </div>
    
</div>
<div id="sub-navi-empty-box"></div>
<div id="sub-navi" class="fixed-group">
    <div class="dumpBannerBox dumpBannerBox-subNavi"></div>
    <div class="sub-navi-container">
        <div class="sub-navi-btns en">
            <a href="library.do" onclick='eventTrack("", "discover_tab_library");'>LIBRARY</a>
            <!-- <a href="featured.do" onclick='eventTrack("", "discover_tab_featured");'>FEATURED</a> -->
            <a href="/discover/popular.do" onclick='eventTrack("", "discover_tab_popular");'>POPULAR</a>
        </div>
        <div class="sub-navi-search">
            <a href="#" class="en" onclick='eventTrack("", "discover_btn_search");'>
                SEARCH
                <div class="search-icon">
                    <img class="icon-search" src="_resource/images/discover/search-icon.png" alt="" />
                    <img class="icon-close" src="_resource/images/discover/search-close.png" alt="" />
                    <div class="top-mask"></div>
                    <div class="bottom-mask"></div>
                </div>
            </a>
        </div>
    </div>
    


<div id="search">
    <div class="search-container">
        <div class="search-input-box">
            <img src="_resource/images/discover/search-icon-big.png" alt="" />
            <input type="text" id="__search_param1__" placeholder="여기에 검색어를 입력하세요." maxlength="50" />
        </div>
        <div class="search-result">
            <div class="search-result-title"></div>
            
            <div id="search-result-library" style="display:none;" >
                <div class="search-result-library-title en">LIBRARY <span id="search-result-library-title-cnt">0</span></div>
                <div class="search-result-library-contents">

                </div>
                <div class="search-more-btn"  style="display:none;" id="search-more-btn-library"> 
                    <a href="javascript:Search.moreData();" >
                        더보기
                        <img src="_resource/images/discover/search-more-icon.png" alt="" />
                    </a>
                </div>
            </div>
            

            
            <div id="search-result-featured" style="display:none;" >
                <div class="search-result-featured-title en">FEATURED <span id="search-result-featured-title-cnt">0</span></div>
                <div class="search-result-featured-contents">

                </div>
                <div class="search-more-btn" style="display:none;" id="search-more-btn-featured">
                    <a href="javascript:Search.moreDataFeatured();">
                        더보기
                        <img src="_resource/images/discover/search-more-icon.png" alt="" />
                    </a>
                </div>
            </div>
            

            <!-- 검색 결과 없을때 -->
            <div class="none_result" style="display:none;">
                <div class="ico">
                    <img src="_resource/images/mypage/ico_bucket_gray.png" alt="">
                </div>
                <div class="text">
                    <div class="sub">검색 결과가 없습니다.</div>
                    <div class="title">다른 검색어로 <span>버킷 리스트</span>를 찾아보세요.</div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


</body>
</html>

<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<!-- <script src="_resource/js/all.js"></script> -->
</body>
</html>

<script src="_resource/js/discover/Discover.BucketCart.js"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/discover/Discover.Common.js"></script>
<script src="_resource/js/discover/Discover.Search.js"></script>
<script src="_resource/js/discover/Discover.Popular.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8" ></script>