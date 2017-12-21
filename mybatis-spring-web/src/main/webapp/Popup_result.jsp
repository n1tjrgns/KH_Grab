<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="model.Bucketlist" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="popups" class="fixed-group" style="display: block;" >

    <div id="detail-popup" class="detail-popup popup-group" style="display: block;" >
 	<!-- 여기서 값이 선택되어서 뿌려져야한다. -->   
        <div class="detail-container">
            <div class="img-container">
                <div class="detail-bg"><img src="_resource/images/discover/library/popup/img-bg.png" alt="img-bg.png" /></div>
                <ul id="detail-img-contents">
                    
                   <!--  <li><div class="simple_loading"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></li> -->
                    <li class="img-box" bucketimage="" style="margin-bottom: 30cm;"><center><img src="${bucketlist.photoURL} " alt="없음"></center></li>
                    <li class="detail-img-shadow"></li>
                    <li class="detail-img-top-shadow"><img src="_resource/images/discover/popup-top-shadow.png" alt="" /></li>
                    <li class="detail-arrow-btns">		
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-l.png" alt=""></a>
                        <a href="javascript:;"><img src="_resource/images/discover/etc/arrow-btn-r.png" alt=""></a>
                    </li>
                    <li class="detail-title">
                        <p class="category en" id="popup_detail_category">${bucketlist.bkSort}</p>
                        <p class="title" id="popup_detail_title">${bucketlist.bkName}</p>
                    </li>
                    <li class="detail-share-btns">
                        <div class="checked-detail-add-btn change-add-check"><img src="_resource/images/discover/etc/add-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-add-btn change-add-btn"><img src="_resource/images/discover/etc/add-btn.png" alt="" /></a>

                        <div class="checked-detail-like-btn change-like-check"><img src="_resource/images/discover/etc/like-btn-checked.png" alt="" /></div>
                        <a href="#" class="detail-like-btn change-like-btn"><img src="_resource/images/discover/etc/like-btn.png" alt="" /></a>

                        <a href="#" class="detail-share-btn"><img src="_resource/images/discover/etc/share-btn.png" alt="" /></a>
                        <div class="detail-small-share-btns">
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_twitter.png" alt="1" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_kakao.png" alt="2" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_facebook.png" alt="3" /></a>
                            <a href="#"><img src="_resource/images/discover/etc/popup_btn_share_close.png" alt="4" /></a>
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
                            <a href="#"><span>#</span>${bucketlist.bkPurpose}</a>
                            <a href="#"><span>#</span>${bucketlist.cEmail} 주관</a>
                            <a href="#"><span>#</span>${bucketlist.bkDate } 부터</a>
                        </li>
                        <li class="desc" id="popup_detail_desc">
                        <div id="test11">
                           ${ bucketlist.bkContent} </div>
                        </li>
         
                    </ul>
                </div>
                <div id="info-right">
                    <ul>
                        <li class="title"><span id="popup_detail_bucket_cnt">최대 ${bucketlist.bkMax}</span> 명이 ${bucketlist.bkDue} 까지 참여 할 수 있습니다.</li>
                        <li class="person-list" id="popup_detail_bucket_list" style="display: none;">
                         
                           <!--  

                            <a href="#" class="last">
                                <svg width="60" height="60" baseProfile="full" version="1.2"><defs><mask id="svgmask2" maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse" transform="scale(1)"><image width="60" height="60" xlink:href="_resource/images/discover/library/popup/person-mask.png" /></mask></defs>
                                    <image id="the-mask" mask="url(#svgmask2)" width="60" height="60" y="0" x="0" xlink:href="_resource/images/discover/library/popup/sample-person.jpg" />
                                </svg>
                            </a>
                         -->   
                        </li>
                        <li class="zero-person-info" style="display: none;">
                            <img src="_resource/images/discover/etc/popup-zero-person-icon.png" alt="" />
                            <div class="desc1">이 버킷 리스트의 </div>
                            <div class="desc2">리뷰를 남긴<span>최초의 1인</span>이 되어 보세요!</div>
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
                
                    페이스북 공유
                </a>

                <a href="#" class="share-ks">
              
                    카카오스토리 공유
                </a>
            </li>
            <li class="share-popup-close"><a href="#"><img src="_resource/images/discover/share-popup-close.png" /></a></li>
        </ul>
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
   
	
	??오이잉
	
</body>
</html>

<script src="_resource/js/discover/Discover.Popup.js"></script>