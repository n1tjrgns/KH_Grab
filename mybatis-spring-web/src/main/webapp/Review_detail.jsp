<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@page import="java.io.*,javax.servlet.*,java.util.*" %>
    <%@page import="model.*,org.springframework.context.*" %>
    <%@page import="org.springframework.context.support.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<c:forEach var="bucket_Review" items="${bucket_Review}" varStatus="status">
<div id="popups" class="fixed-group"  style="left: 0px; display: none;">
	<div id="person-bucket-popup" class="person-bucket-popup popup-group">
        <div class="person-bucket-container">
             
        </div>
    </div>
    

    
    <div id="featured-gate-popup" class="featured-gate-popup popup-group" style="left: 0px; display: none;">
        <div class="gate-popup-box">
            <div class="gate-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="gate-container">

            </div>
        </div>
    </div>
    

    <div id="featured-detail-popup" class="featured-detail-popup popup-group" style="left: 0px; display: none;">
        <div class="f-detail-popup-box">
            <div class="f-detail-bg"><img src="_resource/images/discover/featured/popup/img-bg.png" alt="" /></div>
            <div class="f-detail-container">

            </div>
        </div>
    </div>
    

    <div id="share-popup" class="share-popup popup-group"  style="display: block;">
     	<input type="hidden" id="SNS_SHARE_KEY">
     	<input type="hidden" id="SNS_SHARE_MEM_KEY" value="20171205B000010261">
     	<input type="hidden" id="SAVE_SNS_SHARE_KEY">
     	<input type="hidden" id="SAVE_SNS_SHARE_CTGR">
     	<input type="hidden" id="SAVE_SNS_SHARE_TEXT">
     	<input type="hidden" id="SAVE_SNS_SHARE_IMAGE">
     	<!--  바로 여기 지금 이순간 -->
        <ul class="share-popup-ul">
            <li class="share-popup-title"><span>채 홍기</span> 님이<br> 작성한 리뷰 입니다.</li>
            <li class="share-popup-info"><span>ㆍ</span> 아래 이미지가 GRAB에 공유됩니다.</li>
            <li class="share-popup-img">
                
                <div class="share-popup-contents">
                    <img src="img/bg.jpg"  id="SNS_SHARE_IMAGE"/>
                    <div class="share-popup-dimmed"></div>
                    <div class="share-popup-contents-copy">
                        <p class="en" id="SNS_SHARE_CTGR">${bucket_Review.bkrvTitle}</p>
                        	<span  id="SNS_SHARE_TEXT">${bucket_Review.bkrvContent}</span>
                    </div>
                </div>
                
                
                
            </li>
            
            <c:if test="${bucket_Review.mEmail eq 'member'}">
            <li class="share-popup-btns">
                <a href="#" onclick="YN_update('${bucket_Review.bkrvNum}','${bucket_Review.bkrvCheck}');" class="share-fb">
                    리뷰 공유
                </a>
                
            </li>
            </c:if>
            <li class="share-popup-close">
            <a href="#" 
            onclick="javascript:$('#share-popup').css('display','none');" >
            <img src="_resource/images/discover/share-popup-close.png" />
            </a></li>
        </ul>
    </div>
    </div>
    </c:forEach>
    

</body>
</html>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script>
	
function YN_update(bkrvNum,bkrvCheck){
	$.ajax( //공유여부를 설정한다.
				{	
					url:"Bucket_reviewCheck_update.do",
					dataType:"html",
					type:"POST",
					async:true,
					data: {"bkrvNum" : bkrvNum,"bkrvCheck":bkrvCheck},
					success:function( data ) {	
						alert(data);
						location.reload();
	 				},
					error : function( e ) {
						alert("업데이트 오류\n"+e.error);
					}
				}
			);	
		
}



</script>