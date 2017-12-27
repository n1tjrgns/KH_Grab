<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@page import="java.io.*,javax.servlet.*,java.util.*" %>
    <%@page import="model.*,org.springframework.context.*" %>
    <%@page import="org.springframework.context.support.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <center> <div id="detail-popup" class="detail-popup popup-group" style="display:none;"> 
               		<h2><div class="real_title">
               		 </div></h2><br/><br/>
               		<h3><div class="real">
               		 </div></h3>
                </div></center>
	<c:forEach var="reservation" items="${reservation}" varStatus="status">
	<li>
	                  <div class="list_box" key-value="I0741">
                        <div class="list_img">
							<a href="javascript:Popup.detailPopupShowHide(true);" onclick="showPopup_Personlist('${reservation.bkName }');"><img src="${reservation.photoURL}" alt="${reservation.bkName}" style="width:274px;height:274px;"></a>
                        </div>
                        <div class="list_title"><form name="frm" action="redirect:My_bucket.jsp" method="post"><input type="hidden" name="val1" value="${reservation.bkPurpose }"/>
                            <div class="class en lifestyle">${reservation.bkPurpose }</div>
                            <div class="list_date en">${reservation.regDate }</div>
                            <div class="title"> ${reservation.bkName }</div>
							<div class="mouse_lock" style="display: none;"></div>
                           <c:if test="${reservation.resCheck=='N'}">
                            <a href="javascript:completeBucket('${reservation.bkName }','${reservation.mEmail }','Y');"  class="btn_complete  mot2">완료하기</a>
                            </c:if>
                            <c:if test="${reservation.resCheck=='Y'}">
                            <a href="javascript:completeBucket('${reservation.bkName }','${reservation.mEmail }','N');"  class="btn_complete  mot2">완료 됨</a>
                            </c:if>
                            <br/> <br/>
                            <div class="btn_ico"> 
                 	      <c:if test="${reservation.resCheck=='Y'}">리뷰쓰기 <a href="javascript:Popup.sharePopupShowHide(true);" onclick="transfer('${reservation.bkName}');" class="btn_share mot2"></a></c:if>
                               삭제하기 <a href="javascript:deleteRes('${reservation.mEmail}','${reservation.bkName}');"  class="btn_delete mot2"></a>
                            </div>
                            </form>
                        </div>
                    </div>
                </li>
                </c:forEach>

</body>
</html>
<script>

var mEmail = "member";
var pagenum=1;
function showPopup_Personlist(bkName){
	alert(bkName);
		$.ajax( // 예약정보를 노출시킨다.
			{	beforeSend: function(){ 
				//alert(cEmail+"cEmail"+bkName+"bkName"+mEmail+"mEmail");
			},
				url:"discover/reser_list.do",
				dataType:"html",
				type:"GET",
				async:true,
				data:{"bkName" : bkName, "mEmail" : mEmail,"pagenum":pagenum
					},
				success:function( data ) {
			       alert("리스트 불러오기성공");
			       $(".detail-popup").css("display","none");
			       $(".detail-popup").css("display","block");
			       $(".real").html(data);
			       $(".real_title").html(bkName);
 				},
				error : function( e ) {
				alert(" 실패 \n");
				}
				
			}
		);	 
	}

</script>



<script>
function transfer(value){
   		$("#bkName").val(value);
    	$(".1").html(value);
        alert(value);
    };

</script>


<script>
function  completeBucket(bkName,mEmail,resCheck){

 	$.ajax( // 화면의 데이타를 조회한다.
				{

					url:"ln/member/completeBucket.do",
					dataType:"html",
					type:"GET",
					async:true,
					data:{
						"bkName":bkName , "mEmail":mEmail, "resCheck":resCheck 
					},
					success:function( data ) {
						alert("성공1");
						location.reload();
					},
					error : function( e ) {
						
						//alert("조회 오류\n"+JSON.stringify(e));
						alert("완료되었습니다.");
						location.reload();
					}
				}
		);
	
 }
</script>

<script>
function  deleteRes(bkName,mEmail){

 	$.ajax( // 해당 자료를 삭제한다.
				{

					url:"ln/member/deleteBucket.do",
					dataType:"html",
					type:"GET",
					async:true,
					data:{
						"bkName":bkName , "mEmail":mEmail 
					},
					success:function( data ) {
						alert("성공1");
						location.reload();
					},
					error : function( e ) {
						
						//alert("조회 오류\n"+JSON.stringify(e));
						alert("완료되었습니다.");
						location.reload();
					}
				}
		);
	
 }
</script>
<script src="_resource/js/vendor/jquery-1.11.3.min.js"></script>
<script src="_resource/js/vendor/jquery.cookie.js"></script>
<script src="_resource/js/vendor/spin.min.js"></script>
<script src="_resource/js/vendor/CustomTW.js"></script>
<script type="text/javascript" src="_resource/js/sns_add.js" charset="utf-8"></script>
<script src="_resource/js/common.js"></script>
<script src="_resource/js/login.js"></script>
<script src="_resource/js/common_biz.js"></script>
<script src="_resource/js/discover/Discover.BucketCart.js"></script>
<script src="_resource/js/discover/Discover.Popup.js"></script>
<script src="_resource/js/discover/Discover.Common.js"></script>
<script src="_resource/js/discover/Discover.Search.js"></script>
<script src="_resource/js/discover/Discover.Popular.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8" ></script>
<script type="text/javascript">