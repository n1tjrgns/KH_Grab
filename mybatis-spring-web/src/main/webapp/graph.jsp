<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page
	import="javax.servlet.http.HttpServletRequest,
	javax.servlet.http.HttpSession,
	java.text.SimpleDateFormat"%>
<%@ page import="model.*"%>
<%@ page import="java.util.List,
				 java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>GRAPH</title>
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/common.css">
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/graph.css">
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script
	src="https://www.lifeplus.co.kr/_resource/js/vendor/TweenMax.min.js"></script>
<script src="https://www.lifeplus.co.kr/_resource/_web/js/common.js"></script>
<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/gantt.js"></script>
<script
		src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
		href="https://www.amcharts.com/lib/3/plugins/export/export.css"
		type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="_resource/_web/css/login.css">
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>		
<script type="text/javascript" src="_resource/js/vendor/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
#chartdiv {
	width: 100%;
	height: 500px;
}
#chartdefault{

	width:100%;
	height:780px;
}
</style>
</head>
<body>

<jsp:include page="navi-header.jsp"/>
	<!-- 상단바 하단 -->	
<%
	if (session.getAttribute("loginInfo") != null) {
		Member member = (Member) session.getAttribute("loginInfo");
		System.out.println(member.getmEmail());
	}	
%>
	<!-- section top -->		
<%!
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>	
<%
	List<Linkdata> linkdata = (List<Linkdata>)request.getAttribute("linkdata");

%>

<%
	if (session.getAttribute("loginInfo") != null) {
%>
		<!-- HTML -->
		<div id="wrap" class="service_wrap">
		<div class="section_top"><br/> <br/> 
			<div class="title_text mot5">GRAPH 를 통해<br/> 당신의 추억들을 찾아보세요.</div>
		</div>

		<div class="section_service">
			<div class="title_area">
				<div class="title_box mot4">
					<span class="en">GRAB</span> GRAPH Service
				</div>
			</div>
		<div id="chartdiv"></div>
<%
	} else {
%>
<div id="wrap" class="service_wrap">
		
		<div class="section_service">
		<div id="chartdefault">
				<img src="_resource/_web/images/common/graphDefault.png" class="graphDefault" alt="graphDefault">
		</div>
		
<%
	}
%>
		<!--  사용방법  DB TABLE 가짜공간 게시판  SNS 연동 -->
		<div class="link_sns">
			<dl>
				<dt>SNS 이동</dt>
				<dd>
					<a href="https://www.facebook.com" target="_blank"
						onclick="eventTrack('W_FB_GO');"><img
						src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_fb.png"
						alt="FACEBOOK"></a> <a
						href="https://www.instagram.com" target="_blank"
						onclick="eventTrack('W_INSTA_GO');"><img
						src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_instagram.png"
						alt="INSTAGRAM"></a> <a
						href="https://www.youtube.com" target="_blank"
						onclick="eventTrack('W_YOUTUBE_GO');"><img
						src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_youtube.png"
						alt="YOUTUBE"></a>
				</dd>
			</dl>
		</div>
		<p>
			<br />
			<br />
			<br />
			<br />
			<br />
		</p>
       <div class="login_box">
           <div class="sns_box">
           
               <ul class="reg_ul">
                   <li>
                       <a href="https://www.facebook.com/" class="btn_facebook mot3" onclick='eventTrack("", "login_btn_facebook");'>
                           <span class="ico mot3"></span>
                           <span class="txt"><span class="bold">페이스북</span>으로 회원연동</span>
                           <span class="cursor mot3"></span>
                       </a>
                   </li>
                   <li>
                    <div id="naver_id_login" style="display:none;"></div>
                       <a href="https://www.naver.com/"  class="btn_naver mot3" onclick='eventTrack("", "login_btn_naver");'>
                           <span class="ico mot3"></span>
                           <span class="txt"><span class="bold">네이버</span>로 회원연동</span>
                           <span class="cursor mot3"></span>
                       </a>
                   </li>
                   <li>                     
                       <a href="https://www.kakaocorp.com/service/KakaoTalk?lang=ko" class="btn_kakao mot3" onclick='eventTrack("", "login_btn_kakao");'>
                           <span class="ico mot3"></span>
                           <span class="txt"><span class="bold">카카오</span>로 회원연동</span>
                           <span class="cursor mot3"></span>
                       </a> 
                   </li>
                     <li>
                     
                       <a href="https://www.instagram.com/accounts/emailsignup/" class="btn_insta mot3" onclick='eventTrack("", "login_btn_kakao");'>
                           <span class="ico mot3"></span>
                           <span class="txt"><span class="bold">인스타</span>로 회원연동</span>
                           <span class="cursor mot3"></span>
                       </a> 
                   </li>
                     <li>
                     
                       <a href="Main_login" class="btn_grab mot3">
                           <span class="ico mot3"></span>
                           <span class="txt"><span class="bold">그랩</span>으로 회원연동</span>
                           <span class="cursor mot3"></span>
                       </a> 
                   </li>
               </ul>
           </div>
       </div>
  

		
		<div class="howtouse">
			<div class="howtouseTitle"><h4><br/><br/>HOW TO USE</h4></div>
			<div class="howtouseDesc"><h6>GRAB 서비스의 한 가지인 GRAPH는 <br/>여러 사이트에 분포
				되어있는 회원님이 게시한 글들을 모아서<br/> 한눈에 볼 수 있도록 서비스를 제공합니다. <br/>SNS 연동 기능을 통해 여러 글들을
				모아보고 날짜를 통해 검색해보세요.</h6></div>
		</div>
		<% if(session.getAttribute("loginInfo") != null){%>
		<div id="urlBoard">
		<table class="urlBoard">
		    <thead>
		    <tr>
		        <th scope="cols">종류</th>
		        <th scope="cols">날짜</th>
		        <th scope="cols">URL</th>
		    </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="linkdata" items="${linkdata}" varStatus="status">
		    <tr>
		        <td>${linkdata.snsSort}</td>
		        <td><fmt:formatDate value="${linkdata.bkrvDate}" type="both" pattern="yyyy-MM-dd"/></td>
		        <td><a href="#" onclick="openSnsUrl('${linkdata.snsUrl}');">${linkdata.snsUrl}</a></td>
		    </tr>		    
		    </c:forEach>
		    </tbody>
		</table>
			
		
			</div>
			<% }%>
		</div>
	</div>
	<script type="text/javascript">
		function openSnsUrl(URL){
			window.open(URL,"sns새 창","width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		}
	</script>
	
	<!-- section-service -->
	<!--             footer copyright               -->
	<jsp:include page="navi-footer.jsp"/>

	<script src="https://www.lifeplus.co.kr/_resource/_web/js/service.js"></script>

</body>
</html>

			<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv", {
  "type": "gantt",
  "theme": "light",
  "marginRight": 70,
  "period": "DD",
  "dataDateFormat": "YYYY-MM-DD",
  "columnWidth": 0.5,
  "valueAxis": {
    "type": "date"
  },
  "brightnessStep": 7,
  "graph": {
    "fillAlphas": 1,
    "lineAlpha": 1,
    "lineColor": "#fff",
    "fillAlphas": 0.85,
    "balloonText": "<b>[[task]]</b>:<br />[[open]] -- [[value]]"
  },
  "rotate": true,
  "categoryField": "category",
  "segmentsField": "segments",
  "colorField": "color",
  "startDateField": "start",
  "endDateField": "end",
  "dataProvider":

	  

 
[{			
	"category": "GRAB #1",
    "segments": [
   <% for(int i=0;i<linkdata.size();i++){
    	if(linkdata.get(i).getSnsSort().equals("GRAB")){
    		%>
    	{	
        "start": "<%=sdf.format(linkdata.get(i).getBkrvDate())%>",
        "end": "<%=sdf.format(linkdata.get(i).getBkrvDate().getTime() + (long) ( 1000 * 60 * 60 * 24 ))%>",
        "color": "#cc4748",
        "task": "GRAB 게시글" 
    	},	
    <%}//if%>    	
 <% }//for%>
	]},
{				
	"category": "KAKAO #1",
    "segments": [
   <% for(int i=0;i<linkdata.size();i++){
    	if(linkdata.get(i).getSnsSort().equals("KAKAO")){
    		%>
    	{
        "start": "<%=sdf.format(linkdata.get(i).getBkrvDate())%>",
        "end": "<%=sdf.format(linkdata.get(i).getBkrvDate().getTime() + (long) ( 1000 * 60 * 60 * 24 ))%>",
        "color": "#b9783f",
        "task": "KAKAO 게시글" 
    	},	
    <%}//if%>    	
 <% }//for%>
   ]},
{			
	"category": "INSTA #1",
    "segments": [
   <% for(int i=0;i<linkdata.size();i++){
    	if(linkdata.get(i).getSnsSort().equals("INSTAGRAM")){
    		%>
    	{
        "start": "<%=sdf.format(linkdata.get(i).getBkrvDate())%>",
        "end": "<%=sdf.format(linkdata.get(i).getBkrvDate().getTime() + (long) ( 1000 * 60 * 60 * 24 ))%>",
        "color": "#cd82ad",
        "task": "INSTA 게시글" 
    	},	
    <%}//if%>
    	
 <% }//for%>
   ]},
{				
	"category": "FACEBOOK #1",
    "segments": [
   <% for(int i=0;i<linkdata.size();i++){
    	if(linkdata.get(i).getSnsSort().equals("FACEBOOK")){
    		%>
    	{
        "start": "<%=sdf.format(linkdata.get(i).getBkrvDate())%>",
        "end": "<%=sdf.format(linkdata.get(i).getBkrvDate().getTime() + (long) ( 1000 * 60 * 60 * 24 ))%>",
        "color": "#2f4074",
        "task": "FACEBOOK 게시글" 
    	},	
    <%}//if%>
    	
 <% }//for%>
   ]},
{				
	"category": "NAVER #1",
    "segments": [
   <% for(int i=0;i<linkdata.size();i++){
    	if(linkdata.get(i).getSnsSort().equals("NAVER")){
    		%>
    	{
        "start": "<%=sdf.format(linkdata.get(i).getBkrvDate())%>",
        "end": "<%=sdf.format(linkdata.get(i).getBkrvDate().getTime() + (long) ( 1000 * 60 * 60 * 24 ))%>",
        "color": "#448e4d",
        "task": "NAVER 게시글" 
    	},	
    <%}//if%>
    	
 <% }%>
   ]

  } ],
  "valueScrollbar": {
    "autoGridCount": true
  },
  "chartCursor": {
    "cursorColor": "#55bb76",
    "valueBalloonsEnabled": false,
    "cursorAlpha": 0,
    "valueLineAlpha": 0.5,
    "valueLineBalloonEnabled": true,
    "valueLineEnabled": true,
    "zoomable": false,
    "valueZoomable": true
  },
  "export": {
    "enabled": true
  }
} );
</script>
