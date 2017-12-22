<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.io.*,javax.servlet.*,java.util.*" %>
    <%@page import="model.*,org.springframework.context.*" %>
    <%@page import="org.springframework.context.support.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="image" content="http://www.lifeplusbucket.com/_resource/images/common/sns_share_1200.jpg">
    <link rel="shortcut icon" type="image/x-icon" href="_resource/_web/images/favicon.ico.png">
    <link href="_resource/css/common.css" rel="stylesheet" />
   

<link href="_resource/css/discover.css" rel="stylesheet" />
<link href="_resource/css/discover.popular.css" rel="stylesheet" />
<link href="_resource/css/discover.featured.css" rel="stylesheet" />
<link href="_resource/css/discover.library.css" rel="stylesheet" />
<title>Grab Bucket List : 버킷 리스트를 발견하고 삶에 색을 더하다.</title>

<script>
isLogin = true;
</script>


</head>
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
            
            <a href="#" onclick='eventAJAX("1");' id="p" class="">POPULAR</a>
            <a href="#" onclick='eventAJAX("2");' id="f" class="">FEATURED</a>
            <a href="#" onclick='eventAJAX("3");' id="l" class="">LIBRARY</a>
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


<div id="contents" style="display:none;">
  <div id="category" >
        <a class="active" onclick='eventTrack("", "category_tab_all");' href="javascript:Library.changeCategory('');">
            <div class="category-bgs category-bgs1">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>All</p>
        </a>
        <a onclick='eventTrack("", "category_tab_travel");' href="javascript:Library.changeCategory('L0301');">
            <div class="category-bgs category-bgs2">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Travel</p>
        </a>
        <a onclick='eventTrack("", "category_tab_sports");' href="javascript:Library.changeCategory('L0302');">
            <div class="category-bgs category-bgs3">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Sport</p>
        </a>
        <a onclick='eventTrack("", "category_tab_food");' href="javascript:Library.changeCategory('L0303');">
            <div class="category-bgs category-bgs4">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Food</p>
        </a>
        <a onclick='eventTrack("", "category_tab_newskill");' href="javascript:Library.changeCategory('L0304');">
            <div class="category-bgs category-bgs5">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>New Skill</p>
        </a>
        <a onclick='eventTrack("", "category_tab_culture");' href="javascript:Library.changeCategory('L0305');">
            <div class="category-bgs category-bgs6">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Culture</p>
        </a>
        <a onclick='eventTrack("", "category_tab_outdoor");' href="javascript:Library.changeCategory('L0306');">
            <div class="category-bgs category-bgs7">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Outdoor</p>
        </a>
        <a onclick='eventTrack("", "category_tab_shopping");' href="javascript:Library.changeCategory('L0307');">
            <div class="category-bgs category-bgs8">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Shopping</p>
        </a>
        <a onclick='eventTrack("", "category_tab_lifestyle");' href="javascript:Library.changeCategory('L0308');">
            <div class="category-bgs category-bgs9">
                <div class="off"></div>
                <div class="on"></div>
            </div>
            <p>Lifestyle</p>
        </a>
    </div>
			
	<div id="list-container" class="use_gpu">
		 <c:forEach var="bucketlist" items="${bucketlist}" varStatus="status">
		<div class="list-box seq-I1596" style="transform-origin: 50% 50% 0px; transform: translate(0px, 0px); opacity: 1;" onclick="popup_to_buc('${bucketlist.bkName}');" >
            <div class="list-bg" style="transform: matrix(1, 0, 0, 1, 0, 0);">
                <img src="_resource/images/discover/library/list-empty-box.png" alt="">
                <img class="list-img" src="${bucketlist.photoURL}" shareimage="http://images.hwlife.hscdn.com//library/i1596_share.jpg" alt="준비 중" onload="Popular.listImgLoadComplete(this)" style="opacity: 1;">
                <img class="list-shadow" src="_resource/images/discover/bucket_shadow.png" alt="?">
            </div>
            <div class="winner-count en top3">${status.index+1}</div>
            <div class="list-contents">
                <ul class="list-contents-ul">
                    <li class="category-name en travel">${bucketlist.bkPurpose}</li>
                    <li class="title" ><div name="bkName">${bucketlist.bkName}</div></li>

                    <li class="add-btn" key-value="I1596">
                            
                            <div class="list-add-checked change-add-check ${status.index+1}" style="display:none;"><img src="_resource/images/discover/library/checked.png" alt=""></div>

                            <a href="#" class="en change-add-btn" key-value="I1596" style="display:inline-block">
                                <div class="plus"><img src="_resource/images/discover/library/list-icon-plus.png" alt=""></div>
                                <span>ADD</span>
                            </a>
                    </li>
                    
                    
                    
                    <li class="share-btns" style="height: 0px;">
                        

                        
                        <div class="dibs-checked change-like-check" style="display:none">
                            <img src="_resource/images/discover/library/list-icon1.png" alt="">
                            <span>찜하기</span>
                        </div>
                        <a href="#" class="dibs change-like-btn" key-value="I1596" style="display:inline-block">
                            <img src="_resource/images/discover/library/list-icon1.png" alt="">
                            <span>찜하기</span>
                        </a>


                        <a href="#" class="share">
                            <img src="_resource/images/discover/library/list-icon2.png" alt="">
                            <span>공유하기</span>
                        </a>
                        <div class="small-share-btns" key-value="I1596">
                            <a href="javascript:;"><img src="_resource/images/discover/library/btn_share_facebook.png" alt="페이스북 공유하기"></a>
                            <a href="#"><img src="_resource/images/discover/library/btn_share_kakao.png" alt="카카오스토리 공유하기"></a>
                            <a href="#"><img src="_resource/images/discover/library/btn_share_twitter.png" alt="트위터 공유하기"></a>
                            <a href="#" class="small-share-close-btn"><img src="_resource/images/discover/library/btn_share_close.png" alt="공유하기 닫기"></a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-add-popup">
                <div class="list-add-container">
                    <ul class="list-add-box">
                        <li class="list-add-icon"><img src="_resource/images/discover/library/list-icon3.png" alt=""></li>
                        <li class="list-add-title en">ADD BUCKET LIST</li>
                        <li class="list-add-desc">버킷 리스트가 추가되었습니다.</li>
                    </ul>
                </div>
            </div>
        </div>
		
		
		</c:forEach>
    </div>

 
<div id="bucket-list" class="fixed-group">
    <ul class="bucket-list-box">
        <li class="bucket-list-title">
            <div class="title en">
                MY<br>
                BUCKET LIST
            </div>
            <a href="#" class="mypage-btn" onclick='eventTrack("", "discover_board_mypage");'>마이페이지 가기<img src="_resource/images/discover/bucket-list-icon2.png" alt="" /></a>
        </li>
        <li class="arrow-btn-l arrow-btns"><a href="#"><img src="_resource/images/discover/bucket-list-arrow-l.png" alt="" /></a></li>
        <li class="lists">
            <ul class="lists-container">
                <!--<li><a href="javascript:alert('알럿')"><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></a></li>-->
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
                <li><img src="_resource/images/discover/bucket-list-none-image.png" alt="" /></li>
            </ul>
        </li>
        <li class="arrow-btn-r arrow-btns"><a href="#"><img src="_resource/images/discover/bucket-list-arrow-r.png" alt="" /></a></li>
        <li class="bucket-share">
            <a href="#" onclick='eventTrack("", "discover_board_share");'>
                <div class="copy">
                    친구들과<br>
                    공유하기
                </div>
                <div class="icon"><img src="_resource/images/discover/bucket-list-icon3.png" alt="" /></div>
            </a>
        </li>
    </ul>
    <div class="bucket-list-close-btn"><a href="#"><img src="_resource/images/discover/bucket-list-closebtn.png" alt="[X]" /></a></div>
    <div class="bucket-floating-menu"><a href="#" onclick='eventTrack("", "discover_btn_board");'><div class="over-mot"></div><img src="_resource/images/discover/floating-icon.png" alt="icon!" /></a></div>
</div>
</div>


<div id="contents2" style="display:none;">
	<jsp:include page="bucket_regist.jsp"></jsp:include>
</div> 
<div id="contents3" style="display:none;"> </div>

<div id="black-dimmed"></div>



<div id="ajaxxxx">
<!--  none 되어 있는것을 block 하면 보이게 된다.  -->


   
 </div><!--  ajax -->
 
 
    </div>
</div>

 
 

 
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
<script type="text/javascript">


setGnb(0);

</script>


<script>
$("#contents").css("display","block");
function eventAJAX(num){

 					if (num==3){
 						 $("#contents").css("display","block");
 						 $("#contents2").css("display","none");
 						 $("#p").addClass("active");
 						 $("#l").removeClass("active");
 					}else if(num==2){
 						 $("#contents").css("display","none");
 						 $("#contents2").css("display","block");
 						 $("#l").addClass("active");
 						 $("#p").removeClass("active");
 					}else{
 						alert("준비중입니다.");
 					}
}
</script>


<script>

function popup_to_buc(buck_recode){
	$.ajax( // 상세정보를 팝업시킨다.
			{
				url:"discover/library_detail_popup.do",
				dataType:"html",
				type:"POST",
				async:true,
				data:"bkName="+ buck_recode,
				success:function( data ) {
					
		            $("#ajaxxxx").html(data);
		            $self.listUpdateReset(prevListLen);
					$self.listUpdateReset(0);	 // 초기화 안하니 sessionstroage 후 하얗게 뜸
                    $(".simple_loading").hide();
 				},
				error : function( e ) {
					//alert("조회 오류\n"+e.error);
				}
			}
		);	      
}

</script>

<script>

Popup.$returnURL = "/NewFile.html";
//if(window.sessionStorage.length <1 ) {

setTimeout(function(){
    Library.addMainList("");
}, 200);

//}
  
</script>

