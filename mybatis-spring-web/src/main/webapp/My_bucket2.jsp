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
					alert("리뷰 출력 완료:");
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




<div id="popups" class="fixed-group">

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
  
   
</div>



        
    </div>
</div>

 
 

 
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