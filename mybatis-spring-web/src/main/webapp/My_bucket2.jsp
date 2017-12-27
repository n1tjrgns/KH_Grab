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

<script> var isMainAlready = true; </script>

<div id="wrap" class='already'>

    <div id="guide-height-bg"></div>
    <div id="white-dimmed"></div>
    <div id="container" class="fixed-group">
        <div class="gnb_bg"></div>
        

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
                <a href="Bucket_main" class="h-logo">
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
                    버킷리스트 <span></span>
                </a>
                <a href="Bucket_mypage_wish" class="btn_wish active mot2">
                   버킷 리뷰 <span></span>
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
<div id="contents2">


</div>
    </div>
</div>

 
 
<script>
function my_review_list(mEmail){
	//alert(category);
	$.ajax( //내 리뷰를 불러온다.
			{	
				url:"Bucket_main_review_mypage",
				dataType:"html",
				type:"POST",
				async:true,
				data: "mEmail="+mEmail,
				success:function( data ) {
					//alert("리뷰 출력 완료:");
					$(".list_box_ul").html(data);
		           $self.listUpdateReset(prevListLen);
				   $self.listUpdateReset(0); // 초기화 안하니 sessionstroage 후 하얗게 뜸
                    $(".simple_loading").hide();
 				},
				error : function( e ) {
					alert("리뷰 조회 오류\n"+e.error);
				}
			}
		);	      
}

window.onload= function() { my_review_list('member');}
</script>
 
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>



<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>

</body>
</html>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
