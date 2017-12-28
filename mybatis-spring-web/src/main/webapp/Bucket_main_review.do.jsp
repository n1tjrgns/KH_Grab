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
                <div class="search-result-library-contents" style="overflow:scroll;">
					 <c:forEach var="bucket_Review" items="${bucket_Review}" varStatus="status">
					<div class="search-library-contents  " >
                        <ul>                  
                            <li class="desc" >
								<a href="#" >
									<img src="${bucket_Review.bkrvPhoto}" alt="사진없음"  style="opacity: 1;background-color:#ddf;">
									<p class="en travel">${bucket_Review.bkName}</p>
									<span>${bucket_Review.bkrvTitle}</span>
									<br/><span>평점 : ${bucket_Review.bkrvScore}</span>
									 <p class="en travel">작성자  : ${bucket_Review.mEmail}</p>
									 <p class="en travel">작성일  : ${bucket_Review.bkrvDate}</p>
								</a>
								<div class="btn_ico"> 
								 <a href="javascript:Popup.sharePopupShowHide(true);" onclick="transfer('${bucket_Review.mEmail}','${bucket_Review.bkName}');" class="btn_share mot2">리뷰 상세 보기
								 </a><br/>
								<br/>                               	
                               
              				</div>
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



<script>
	function deleteRes(mEmail,bkName){
		$.ajax( //리뷰를 삭제한다.
				{	
					url:"Bucket_main_review_mypage_delete",
					dataType:"html",
					type:"POST",
					async:true,
					data: {"mEmail" : mEmail,"bkName" : bkName},
					success:function( data ) {	
					alert("삭제성공");		
	 				},
					error : function( e ) {
						alert("삭제 오류\n"+e.error);
					}
				}
			);	
		
	}
</script>

<script>
	function transfer(mEmail,bkName){
		$.ajax( //내 리뷰 상세내역을 불러온다.
				{	
					url:"Bucket_main_review_mypage_detail",
					dataType:"html",
					type:"POST",
					async:true,
					data: {"mEmail" : mEmail,"bkName" : bkName},
					success:function( data ) {	
						$("#contents2").html(data);
						$("#contents2").css("display","block");
						$("#popups").css("display","block");
						
	 				},
					error : function( e ) {
						alert("리뷰 조회 오류\n"+e.error);
					}
				}
			);	
		
	}
</script>
<script>
	

</script>
<script src="_resource\css\mypage.css"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
</body>
</html>
