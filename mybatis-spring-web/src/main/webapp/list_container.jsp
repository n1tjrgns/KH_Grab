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

		 <c:forEach var="bucketlist" items="${bucketlist}" varStatus="status">
		<div class="list-box seq-I1596" style="transform-origin: 50% 50% 0px; transform: translate(0px, 0px); opacity: 1;" onclick="popup_to_buc('${bucketlist.bkName}');" >
            <div class="list-bg" style="transform: matrix(1, 0, 0, 1, 0, 0);">
                <img src="_resource/images/discover/library/list-empty-box.png" alt="">
                <img class="list-img" src="${bucketlist.photoURL}" shareimage="http://images.hwlife.hscdn.com//library/i1596_share.jpg" alt="" onload="Popular.listImgLoadComplete(this)" style="opacity: 1;background-color: url('img/logo.jpg');">
                <img class="list-shadow" src="_resource/images/discover/bucket_shadow.png" alt="?">
            </div>
            <div class="winner-count en top3">${status.index+1}</div>
            <div class="list-contents">
                <ul class="list-contents-ul">
                    <li class="category-name en travel">${bucketlist.bkPurpose}</li>
                    <li class="title" ><div name="bkName">${bucketlist.bkName}</div></li>

                    <li class="add-btn" key-value="I1596">
                            
                            <div class="list-add-checked change-add-check ${status.index+1}" style="display:none;"><img src="_resource/images/discover/library/checked.png" alt="?"></div>

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

</body>
</html>


<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<!-- <script src="_resource/js/all.js"></script> -->
<script src="_resource/js/discover/Discover.BucketCart.js"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/discover/Discover.Common.js"></script>
<script src="_resource/js/discover/Discover.Search.js"></script>
<script src="_resource/js/discover/Discover.Popular.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8" ></script>
<script type="text/javascript">