<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="java.io.*,javax.servlet.*,java.util.*" %>
    <%@page import="model.*,org.springframework.context.*" %>
    <%@page import="org.springframework.context.support.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	
		<div id="search" style="display:block;">
    <div class="search-container">
        <div class="search-input-box">
            <img src="_resource/images/discover/search-icon-big.png" alt="" />
            <input type="text" id="__search_param1__" placeholder="여기에 검색어를 입력하세요." maxlength="50" />
        </div>
        <div class="search-result">
            <div class="search-result-title"></div>
            
            <div id="search-result-library" style="display:block;" >
                <div class="search-result-library-title en">LIBRARY <span id="search-result-library-title-cnt">${fn:length(bucket_Review)}</span></div>
                <div class="search-result-library-contents">
					 <c:forEach var="bucket_Review" items="${bucket_Review}" varStatus="status">
					<div class="search-library-contents ">
                        <ul>                  
                            <li class="desc" >
								<a href="#" >
									<img src="${bucket_Review.bkrvPhoto}" alt="${bucket_Review.bkrvPhoto}">
									<p class="en travel">${bucket_Review.bkName}</p>
									<span>${bucket_Review.bkrvTitle}</span>
									<br/><span>평점 : ${bucket_Review.bkrvScore}</span>
									 <p class="en travel">작성자  : ${bucket_Review.mEmail}</p>
									 <p class="en travel">작성일  : ${bucket_Review.bkrvDate}</p>
								</a>
                             </li>
                        </ul>
                    </div>
				</c:forEach>  
                </div>
                <div class="search-more-btn"  style="display:block;" id="search-more-btn-library"> 
                    <a href="javascript:Search.moreData();" >
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