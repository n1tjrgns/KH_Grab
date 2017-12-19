<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="qna.SMTPAuthenticator" %>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">

<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>GRAB</title>
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/common.css">
<script src="_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script src="_resource/js/vendor/TweenMax.min.js"></script>
<script src="_resource/_web/js/common.js"></script>
<link rel="stylesheet" type="text/css"
	href="_resource/_web/css/notification.css">
<script>
	var rootDomain = "https://www.lifeplus.co.kr/"; //구독하기 도메인
	var resourceDomain = "https://www.lifeplus.co.kr";
</script>


</head>
<body>

	<jsp:include page="navi-header.jsp"></jsp:include> 
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


	<div id="wrap">
		<div class="section_top">
			<h2>
				<span class="en">GRAB</span>의 보다 자세한 뉴스와 FAQ를 지금 만나보세요.
			</h2>
			<h3 class="en">Q & A</h3>
		</div>
		<div class="tap_container">
			<div class="tap_top">
				<ul>

					<li class=""><a href="#">자주 묻는 질문</a></li>
					<li class="on"><a href="#">공지사항</a></li>
					<li class=""><a href="#">Q & A</a></li>
				</ul>
			</div>
		</div>


		<div class="faq_text_container">
			<div class="text_title">
				<h3>자주 묻는 질문</h3>
				<p>
					<span class="en">Lifeplus</span>의 궁금한 사항을 먼저 찾아보세요.
				</p>
			</div>
			<div class="faq_container">
				<ul class="faq_tab">
					<li class="on"><a href="#">Lifeplus Ambassador</a></li>
					<li><a href="#">About Lifeplus</a></li>
				</ul>
				<ul class="faq_article on">
					<li>
						<p class="q">
							<a href="#">Lifeplus Ambassador란?</a>
						</p>
						<p class="a">Lifeplus의 가치를 실천하는 대학생 홍보대사로서 평소 본인만의 라이프스타일이 뚜렷한
							끼있고, 열정있는 대학생이라면 누구나 해당합니다.</p>
					</li>
					<li>
						<p class="q">
							<a href="#">Lifeplus 앰배서더 중복 투표가 가능한가요?</a>
						</p>
						<p class="a">
							Lifeplus 앰배서더 투표 프로모션은 참여자 SNS 계정당 하루에 3회의 투표권이 주어집니다.<br> 이
							때 동일한 지원자에게 중복투표는 불가하며, 각각 다른 3명의 지원자에게 투표 할 수 있습니다.<br> <br>
							단, 페이스북/네이버/카카오스토리 각 계정에 따라 3회의 투표권이 주어지는 것으로 투표 프로모션 참여자 1인당 하루에
							최대 총 9회의 투표가 가능합니다.<br> <br> (이 경우에, 페이스북 로그인 시 A를 투표한
							후 네이버 계정으로 재로그인 시 A 중복 투표 가능)
						</p>
					</li>
					<li>
						<p class="q">
							<a href="#">Lifeplus 앰배서더의 실시간 투표 진행 순위는 어디서 볼 수 있나요? </a>
						</p>
						<p class="a">
							Lifeplus 앰배서더 투표 프로모션 결과는 비공개입니다.<br> 최종적으로 선발되는 Lifeplus
							앰배서더 30명은, 면접결과 및 투표결과가 각50%씩 반영되어 최종 선발될 예정입니다.
						</p>
					</li>


				</ul>
			</div>
		</div>
		<div class="noti_text_container">
			<div class="text_title">
				<h3>공지사항</h3>
				<p>
					<span class="en">GRAB</span>의 다양한 소식을 알려드립니다.
				</p>
			</div>
			<div class="notifiaction_container">
				<ul>
					<li class="head"><span class="num">번호</span> <span
						class="title">제목</span> <span class="date">등록일</span></li>


					<li class="no2"><a href="#"><span class="num"><em>2</em></span>
							<span class="title">벚꽃 콘서트 티켓 발송 안내</span> <span class="date">2017-03-15</span></a>
						<div class="content">
							즉석당첨, 벚꽃콘서트 티켓을 잡아라!<br> "나만의 핑크 블라썸" 이벤트에 당첨 되신 분들, 축하드립니다.<br>
							<br> 당첨되신 콘서트 티켓은 이벤트 종료 후 모바일 티켓으로 일괄 발송 예정입니다.(1인2매)<br>
							<br> ■ 발송 일자 : 4월 4일 (화요일)<br> ■ 발송 시간 : 오후 1시~6시 사이<br>
							<br> 행사 당일 당첨되신 분의 신분증과 함께 모바일 티켓 확인 후 입장 안내해 드릴 예정입니다.
							(*본인확인 가능한 신분증 필참)<br> <br> 문의 사항은 페스티벌 운영사무국(<a
								href="mailto:lifepluspicnic@gmail.com">lifepluspicnic@gmail.com</a>)과<br>
							아래 연락처로 문의하실 수 있습니다.<br> <br> 티켓 이벤트 관련 문의 : ☎
							02-519-6970<br> 피크닉 페스티벌 관련 문의 : ☎ 02-334-7191<br> <br>
							연락가능 시간 : 평일 오전 9시~오후 6시<br> (점심시간 12시~1시)<br>
						</div></li>
					<li class="no1"><a href="#"><span class="num"><em>1</em></span>
							<span class="title">티켓 이벤트 참여 안내</span> <span class="date">2017-03-15</span></a>
						<div class="content">
							즉석당첨, 벚꽃콘서트 티켓을 잡아라!<br> "나만의 핑크 블라썸" 이벤트 참여방법 안내 드립니다.<br>
							<br> ➊ 홈페이지 가운데 [Ticket Event] 버튼을 누르고,<br> ➋ 페이스북,
							네이버, 카카오 ID 중 하나로 로그인 후<br> ➌ 당첨 안내를 위한 개인정보를 입력 (*이벤트 최초 응모
							시에만)<br> ➍ 흩날리는 벚꽃 잎 중에 “핑크” 블라썸을 클릭 (모바일에서 응모 시 터치하세요)<br>
							➎ 응모와 동시에 즉석에서 당첨여부를 확인하실 수 있습니다.<br> <br> 이벤트 관련 문의나
							오류는 운영사무국으로 문의해 주시기 바랍니다.<br> 이메일 : <a
								href="mailto:lifepluspicnic@gmail.com">lifepluspicnic@gmail.com</a><br>
							☎ 전화 : 02-519-6970<br> <br> 연락가능 시간 평일 오전 9시~오후 6시<br>
							(점심시간 12시~1시)<br>
						</div></li>
				</ul>
			</div>
		</div>

		<div class=mail_text_container>
			<div class="text_title">
				<h3>Q & A</h3>
				<p>
					<span class="en">GRAB</span>의 다양한 소식을 알려드립니다.
				</p>
			</div>
			<div class="mailing_container">
				<form name="qna_write" action="q.jsp" method="post">

					<ul class="mail">
						<li class="texttype">작성자&nbsp; &nbsp;&nbsp;<input type="text"
							width="300" name="name"
							style="width: 250px; height: 30px; border: 3px solid pink; margin-top: 10px;"></li>
						<li class="texttype">휴대전화&nbsp;<input type="text"
							name="phonenum"
							style="width: 250px; height: 30px; border: 3px solid pink; margin-top: 10px;"></li>
						<li class="texttype">전화번호&nbsp;<input type="text" name="hnum"
							style="width: 250px; height: 30px; border: 3px solid pink; margin-top: 10px;"></li>
						<li class="texttype">이메일&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="email"
							style="width: 250px; height: 30px; border: 3px solid pink; margin-top: 10px;"></li>
						<li class="texttype">&nbsp;제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="subject"
							style="width: 250px; height: 30px; border: 3px solid pink; margin-top: 10px;"></li>
						<li class="textarea">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea
								name="content" class="content" cols="40" rows="5"
								style="margin-top: 10px; border: 3px solid pink;">내용을 입력하세요. 
					</textarea>
						</li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="submit" value="문의하기" onclick="check()" class="submit"
							style="background-color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;">
							<input type="reset" value="취소"
							style="background-color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;"></li>
						<li><input type="hidden" name="from"
							value="n2tjrgns@gmail.com"></li>
					</ul>
				</form>
			</div>
		</div>

		<script>
		$(".submit").click(
			function check() {
				alert("전송되었습니다.");
				document.q.submit();
				<%System.out.println("출력되었따미2");%>
				
			}
			);
		</script>
	</div>
	<jsp:include page="navi-footer.jsp"></jsp:include> 
		<script src="_resource/_web/js/faq.js"></script>
</body>
</html>
<%System.out.println("출력되었따미33333333");%>
<%
	request.setCharacterEncoding("utf-8");
	String name = null;
	String phonenum = null;
	String hnum = null;
	String email = null;
	String subject = null;
	String content = null;
	String from = null;
	if (request.getParameter("name") != null) {
		name = request.getParameter("name");
	}
	if (request.getParameter("phonenum") != null) {
		phonenum = request.getParameter("phonenum");
	}
	if (request.getParameter("hnum") != null) {
		hnum = request.getParameter("hnum");
	}
	if (request.getParameter("email") != null) {
		email = request.getParameter("email");
	}
	if (request.getParameter("subject") != null) {
		subject = request.getParameter("subject");
	}
	if (request.getParameter("from") != null) {
		from = request.getParameter("from");
	}

	Properties p = new Properties(); // 정보를 담을 객체

	p.put("mail.smtp.host", "smtp.gmail.com");
	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");

	try {
		Authenticator auth = new SMTPAuthenticator();
		Session ses = Session.getInstance(p, auth);

		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체 

		msg.setSubject(subject); //  제목

		StringBuffer buffer = new StringBuffer();
		buffer.append("작성자 : ");
		buffer.append(name + "<br>");
		buffer.append("휴대전화 : ");
		buffer.append(phonenum + "<br>");
		buffer.append("전화번호 : ");
		buffer.append(hnum + "<br>");
		buffer.append("이메일 : ");
		buffer.append(email + "<br>");
		buffer.append("제목 : "); 
		buffer.append(subject + "<br>");
		buffer.append("내용 : ");
		buffer.append(content + "<br>");
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr);

		Address toAddr = new InternetAddress(email);
		msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람

		msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 내용
		Transport.send(msg); // 전송  

	} catch (Exception e) {
		e.printStackTrace();
		return;
	}
%>
