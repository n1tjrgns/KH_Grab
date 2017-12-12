<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<script>
	var rootDomain = "http://localhost:8088/grab/main.html";
	var resourceDomain = "http://localhost:8088/grab/main.html";
	var cdnDomain = "http://localhost:8088/grab/main.html";
	var menuCd = "null";
</script>
</head>
<body>
<jsp:include page="navi-header.jsp"/>
	<!-- 상단바 하단 -->

	<script>
		$('.nowMove').click(function() {
			localStorage.removeItem('search');
			localStorage.removeItem('sTop');
			localStorage.removeItem('page');
			localStorage.removeItem('order');
			localStorage.removeItem('value');
			localStorage.removeItem('back');
		});
	</script>
 
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
			<!-- Styles -->
			<style>
#chartdiv {
	width: 100%;
	height: 500px;
}
</style>

			<!-- Resources -->
			<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
			<script src="https://www.amcharts.com/lib/3/serial.js"></script>
			<script src="https://www.amcharts.com/lib/3/gantt.js"></script>
			<script
				src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
			<link rel="stylesheet"
				href="https://www.amcharts.com/lib/3/plugins/export/export.css"
				type="text/css" media="all" />
			<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

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
  "dataProvider": [ {
    "category": "GRAB #1",
    "segments": [ {
      "start": "2016-01-01",
      "end": "2016-01-14",
      "color": "#cc4748",
      "task": "Gathering requirements"
    }, {
      "start": "2016-01-16",
      "end": "2016-01-27",
      "task": "Producing specifications"
    }, {
      "start": "2016-02-05",
      "end": "2016-04-18",
      "task": "Development"
    }, {
      "start": "2016-04-18",
      "end": "2016-04-30",
      "task": "Testing and QA"
    } ]
  }, {
    "category": "KAKAO #2",
    "segments": [ {
      "start": "2016-01-08",
      "end": "2016-01-10",
      "color": "#b9783f",
      "task": "Gathering requirements"
    }, {
      "start": "2016-01-12",
      "end": "2016-01-15",
      "task": "Producing specifications"
    }, {
      "start": "2016-01-16",
      "end": "2016-02-05",
      "task": "Development"
    }, {
      "start": "2016-02-10",
      "end": "2016-02-18",
      "task": "Testing and QA"
    } ]
  }, {
    "category": "INSTA #3",
    "segments": [ {
      "start": "2016-01-02",
      "end": "2016-01-08",
      "color": "#cd82ad",
      "task": "Gathering requirements"
    }, {
      "start": "2016-01-08",
      "end": "2016-01-16",
      "task": "Producing specifications"
    }, {
      "start": "2016-01-19",
      "end": "2016-03-01",
      "task": "Development"
    }, {
      "start": "2016-03-12",
      "end": "2016-04-05",
      "task": "Testing and QA"
    } ]
  }, {
    "category": "FACEBOOK #4",
    "segments": [ {
      "start": "2016-01-01",
      "end": "2016-01-19",
      "color": "#2f4074",
      "task": "Gathering requirements"
    }, {
      "start": "2016-01-19",
      "end": "2016-02-03",
      "task": "Producing specifications"
    }, {
      "start": "2016-03-20",
      "end": "2016-04-25",
      "task": "Development"
    }, {
      "start": "2016-04-27",
      "end": "2016-05-15",
      "task": "Testing and QA"
    } ]
  }, {
    "category": "NAVER #5",
    "segments": [ {
      "start": "2016-01-01",
      "end": "2016-01-12",
      "color": "#448e4d",
      "task": "Gathering requirements"
    }, {
      "start": "2016-01-12",
      "end": "2016-01-19",
      "task": "Producing specifications"
    }, {
      "start": "2016-01-19",
      "end": "2016-03-01",
      "task": "Development"
    }, {
      "start": "2016-03-08",
      "end": "2016-03-30",
      "task": "Testing and QA"
    } ]
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

			<!-- HTML -->
			<div id="chartdiv"></div>


			<!--  사용방법  DB TABLE 가짜공간 게시판  SNS 연동 -->
			<div class="link_sns">
				<dl>
					<dt>SNS 이동</dt>
					<dd>
						<a href="https://www.facebook.com/lifeplus.h/" target="_blank"
							onclick="eventTrack('W_FB_GO');"><img
							src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_fb.png"
							alt="FACEBOOK"></a> <a
							href="https://www.instagram.com/lifeplus_h/" target="_blank"
							onclick="eventTrack('W_INSTA_GO');"><img
							src="https://www.lifeplus.co.kr/_resource/_web/images/common/ico_link_instagram.png"
							alt="INSTAGRAM"></a> <a
							href="https://www.youtube.com/lifeplus_h" target="_blank"
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
                        <a href="javascript:loginSns('facebook','login');" class="btn_facebook mot3" onclick='eventTrack("", "login_btn_facebook");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">페이스북</span>으로 회원연동</span>
                            <span class="cursor mot3"></span>
                        </a>
                    </li>
                    <li>
                     <div id="naver_id_login" style="display:none;"></div>
                        <a href="javascript:loginSns('naver','login');"  class="btn_naver mot3" onclick='eventTrack("", "login_btn_naver");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">네이버</span>로 회원연동</span>
                            <span class="cursor mot3"></span>
                        </a>
                    </li>
                    <li>
                      
                        <a href="javascript:loginSns('kakao','login');" class="btn_kakao mot3" onclick='eventTrack("", "login_btn_kakao");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">카카오</span>로 회원연동</span>
                            <span class="cursor mot3"></span>
                        </a> 
                    </li>
                      <li>
                      
                        <a href="https://www.instagram.com/lifeplus_h/" class="btn_insta mot3" onclick='eventTrack("", "login_btn_kakao");'>
                            <span class="ico mot3"></span>
                            <span class="txt"><span class="bold">인스타</span>로 회원연동</span>
                            <span class="cursor mot3"></span>
                        </a> 
                    </li>
                      <li>
                      
                        <a href="Main_login_regist" class="btn_grab mot3" onclick='eventTrack("", "login_btn_kakao");'>
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
			    <tr>
			        <td>NAVER BLOG</td>
			        <td>20171205</td>
			        <td><a href="https://m.blog.naver.com/ghdrlekrl/221083783125">https://m.blog.naver.com/ghdrlekrl/221083783125</a></td>
			    </tr>
			    <tr>
			        <td>NAVER BLOG</td>
			        <td>20171205</td>
			        <td>https://m.blog.naver.com/ghdrlekrl/221116850979</td>
			    </tr>
			    <tr>
			        <td>NAVER BLOG</td>
			        <td>20171205</td>
			        <td>https://m.blog.naver.com/ghdrlekrl/221143952457</td>
			    </tr>
			    </tbody>
			</table>
			
		
			</div>
		</div>
	</div>
	<!-- section-service -->
	<!--             footer copyright               -->
	<jsp:include page="navi-footer.jsp"/>

	<script src="https://www.lifeplus.co.kr/_resource/_web/js/service.js"></script>

</body>
</html>

<link rel="stylesheet" type="text/css" href="_resource/_web/css/login.css">
<script type="text/javascript" src="_resource/js/vendor/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>



</html>
