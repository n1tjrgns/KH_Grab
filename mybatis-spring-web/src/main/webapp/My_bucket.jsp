<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
    <meta charset="UTF-8">
	
    <link rel="shortcut icon" type="image/x-icon" href="_resource/images/favicon.ico">
 
    <link href="_resource/css/common.css" rel="stylesheet" />

<link href="_resource/css/mypage.css" rel="stylesheet" />
<title>Lifeplus Bucket List : 나의 버킷 리스트</title>

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
        
<div class="pop_layer pop_login">
    <div class="pop_inner">
        <a href="javascript:login.closePop();" class="btn_pop_close">
            <img src="_resource/images/register/pop/btn_pop_close.png" alt="">
        </a>
    </div>
</div>
<div class="pop_bg"></div>
 
        <div class="dumpBannerBox"></div>
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
	<input type="hidden" name="_search_param3_" id="_search_param3_">
    <div class="mypage_content">
        <div class="top_title">
            <div class="profile_img">
                <img src="_resource/images/register/ico_profile.png" alt="나의이미지" />
            </div>
            <div class="profile_name">
                <span>채홍기</span> 님의 마이페이지 <a href="javascript:Popup.directShareSns('MYBUC','', '', 'http://www.lifeplusbucket.com/_resource/images/common/sns_share_img.jpg');" class="ico"><img src="_resource/images/mypage/ico_circle_share.png" alt="공유" /></a>
                
            </div>
            <div class="btn_tab_area">
                <a href="Bucket_mypage" class="btn_bucket active mot2">
                    버킷리스트 <span></span>
                </a>
                <a href="Bucket_mypage_wish" class="btn_wish mot2">
                    버킷 리뷰 <span></span>
                </a>
            </div>
        </div>
        <div class="list_area">
			<div class="list_tab">
				<ul class="list_ul">
					<li>
						<a href="javascript:regisList('member');" class="first active mot2">전체</a>
					</li>
					<li>
						<a href="javascript:regisList2('member','N');" class="mot2">예약 중</a>
					</li>
					<li>
						<a href="javascript:regisList2('member','Y');" class="mot2">수행 완료</a>
					</li>
				</ul>
			</div>
			<!-- 리스트 없을때 -->
			<div class="list_none" style="display:block;">
				<div class="ico">
					<img src="_resource/images/mypage/ico_bucket.png" alt="" />
				</div>
				<div class="sub">아직 추가된 마이 버킷 리스트가 없습니다.</div>
				<div class="title">당신만의 <span>버킷 리스트</span>를 지금 바로 담아보세요.</div>
				<a href="/discover/featured.do">
					<span class="en">BUCKET LIST</span> 발견하기
				</a>
			</div>

			<!-- 리스트 있을때 -->
            <ul class="list_box_ul" style="display:none;">
        
            
            </ul>
          	<a href="javascript:void(0);" class="btn_more mot2">더보기</a>
        </div>
    </div>
</div>
<div id="black-dimmed"></div>

<script>
var mEmail='member';
 function regisList(mEmail){

	$.ajax( //전체 리스트를 불러온다.
			{
				url:"Bucket_mypage.do",
				dataType:"html",
				type:"POST",
				async:true,
				data:"mEmail="+ mEmail,
				success:function( data ) {
					//alert("성공\n");
					$(".list_none").css("display","none");
					$(".list_box_ul").css("display","block");
		            $(".list_box_ul").html(data);
		     
		            $self.listUpdateReset(prevListLen);
					$self.listUpdateReset(0);	 // 초기화 안하니 sessionstroage 후 하얗게 뜸   
 				},
				error : function( e ) {
					alert("조회 오류\n"+e.error);
				}
			}
		);	      
} 
 window.onload= function() { regisList(mEmail);
 setBtns();};
</script>
<script>

function setBtns() {
	var depth2Btns = $(".list_ul>li>a");

	depth2Btns.click(function(){
		depth2Btns.removeClass("active");
		$(this).addClass("active");
	})
}


</script>

<script>

function regisList2(mEmail,NY){
	
	$.ajax( //완료또는 완료되지 않은 리스트를 불러온다.
			{
				url:"Bucket_mypage.do",
				dataType:"html",
				type:"POST",
				async:true,
				data: {"mEmail": mEmail, "resCheck": NY },
				success:function( data ) {
					//alert("성공\n");
					$(".list_none").css("display","none");
					$(".list_box_ul").css("display","block");
		            $(".list_box_ul").html(data);
		            $self.listUpdateReset(prevListLen);
					$self.listUpdateReset(0);	 // 초기화 안하니 sessionstroage 후 하얗게 뜸
			
 				},
				error : function( e ) {
					alert("조회 오류2\n"+e.error);
				}
			}
		);	      
} 
 
</script>



<div id="popups" class="fixed-group">

    
    <div id="detail-popup" class="detail-popup popup-group">
        <div class="detail-container">
            <div class="img-container">
                <div class="detail-bg"><img src="_resource/images/discover/library/popup/img-bg.png" alt="" /></div>

                <ul id="detail-img-contents">
                    
                    <li><div class="simple_loading"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></li>
                    <li class="img-box" bucketimage=""></li>
                    <li class="detail-img-shadow"></li>
                    <li class="detail-img-top-shadow"><img src="/_resource/images/discover/popup-top-shadow.png" alt="" /></li>
                    <li class="detail-arrow-btns">
                        <a href="javascript:;"><img src="/_resource/images/discover/etc/arrow-btn-l.png" alt=""></a>
                        <a href="javascript:;"><img src="/_resource/images/discover/etc/arrow-btn-r.png" alt=""></a>
                    </li>
                    <li class="detail-title">
                        <p class="category en" id="popup_detail_category">TRAVEL</p>
                        <p class="title" id="popup_detail_title">마테호른에서 커피 한 잔 하기1</p>
                    </li>
                    <li class="detail-share-btns">
                        <div class="checked-detail-add-btn change-add-check"><img src="/_resource/images/discover/etc/add-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-add-btn change-add-btn"><img src="/_resource/images/discover/etc/add-btn.png" alt="" /></a>

                        <div class="checked-detail-like-btn change-like-check"><img src="/_resource/images/discover/etc/like-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-like-btn change-like-btn"><img src="/_resource/images/discover/etc/like-btn.png" alt="" /></a>

                        <a href="#" class="detail-share-btn"><img src="/_resource/images/discover/etc/share-btn.png" alt="" /></a>
                        <div class="detail-small-share-btns">
                            <a href="#"><img src="/_resource/images/discover/etc/popup_btn_share_twitter.png" alt="" /></a>
                            <a href="#"><img src="/_resource/images/discover/etc/popup_btn_share_kakao.png" alt="" /></a>
                            <a href="#"><img src="/_resource/images/discover/etc/popup_btn_share_facebook.png" alt="" /></a>
                            <a href="#"><img src="/_resource/images/discover/etc/popup_btn_share_close.png" alt="" /></a>
                        </div>
                    </li>
                    <li class="detail-top-btns">
                        <div class="dots">
                            <a href="#" class="active"></a>
                            <a href="#"></a>
                            <a href="#"></a>
                        </div>
                        <a href="#" class="detail-popup-close"><img src="/_resource/images/discover/library/popup/close-btn.png" alt="" /></a>
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
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="/_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="/_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                            
                        </li>
                        <li class="zero-person-info" style="display: none;">
                            <img src="/_resource/images/discover/etc/popup-zero-person-icon.png" alt="" />
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
            <div class="gate-bg"><img src="/_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="gate-container">

            </div>
        </div>
    </div>
    

    
    <div id="featured-detail-popup" class="featured-detail-popup popup-group">
        <div class="f-detail-popup-box">
            <div class="f-detail-bg"><img src="/_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
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
            <li class="share-popup-title"><span>채홍기</span> 님의<br> 버킷리스트 리뷰를 작성해보세요!</li>
            <li class="share-popup-info"><span>ㆍ</span> 아래 내역은 공개시 리뷰로 등록됩니다.</li>
            <li class="share-popup-img">
                
                <div class="share-popup-contents">
                    <img src="img/bg.jpg"  id="SNS_SHARE_IMAGE"/>
                    <div class="share-popup-dimmed"></div>
                    <div class="share-popup-contents-copy">
                       <form name="form" method="post" action="discover/bucket_review_resist.do">
                       <p class="1">이곳은 버킷 이름이 들어가는 곳</p>
                       <input type="hidden" name="mEmail" value="member">
                       <input type="hidden" name="bkName" id="bkName" value="">
                       	제목 : <input name ="bkrvTitle" type="text" size="50"/> <br/>
                 		<span  id="SNS_SHARE_TEXT">	내용 : <textarea cols="55" rows="15" name="bkrvContent"> </textarea> <br/></span>
                      <p>평점 : 
                      <input type="radio" name="bkrvScore" value="1">1
                      <input type="radio" name="bkrvScore" value="2">2
                      <input type="radio" name="bkrvScore" value="3">3
                      <input type="radio" name="bkrvScore" value="4">4
                      <input type="radio" name="bkrvScore" value="5">5</p>
                     
                        	</form> 
                    </div>
                </div>
            </li>
            <li class="share-popup-btns">
                <a  href="javascript:regist();"  class="share-fb">
              
                   리뷰등록하기
                </a>
                
            </li>
            <li class="share-popup-close"><a href="#"><img src="_resource/images/discover/share-popup-close.png" /></a></li>
        </ul>
    </div>
  	<script>
  	function  regist(){
  		document.form.submit(); 
  	}
  	
  	
  	</script>
    
    
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

 	<script src="http://code.jquery.com/jquery-latest.js"></script>
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
<script src="_resource/js/vendor/kakao.min.js"></script>




<script>
	setGnb(3);

var mypage_page = 1;

var $btnMore = $('.btn_more'),
$btnComplete = document.getElementsByClassName('btn_complete'),
$btnDelete = document.getElementsByClassName('btn_delete'),
$listLi = $('.list_box_ul').find('li'),
dom = $listLi.clone(),
listIdx,
isLoadtype = "";




function loadList(type){
	isLoadtype = type;

	$("#_search_param3_").val(type);
	$('.list_box_ul').html("");
	mypage_page = 1;
	addList();
}


function updateBtns(){
	

	var btnComplete = $(".btn_complete");
	var btnDelete = $(".btn_delete");

	btnComplete.off("click");
	btnComplete.on("click", function(){
		completeCheck($(this));
	})

	btnDelete.off("click");
	btnDelete.on("click", function(){
		deleteLi($(this));
	})



}




$btnMore.click(function(){
	addList();
});

 
    addList();
</script>
<script src="_resource/js/vendor/kakao.min.js"></script>
<script type="text/javascript">
<!--
Kakao.init('54fdc94fb5308e67bf208e2863485e71');

//-->
</script>
