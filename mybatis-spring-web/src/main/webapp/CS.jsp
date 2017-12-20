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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
					<li class="on"><a href="#">GRAB의 자주 묻는 질문</a></li>
					
				</ul>
				<ul class="faq_article on">
					<c:forEach var="cslist" items="${cslist}" varStatus="status">
					<c:if test="${cslist.csSort=='자주 묻는 질문'}">
					<li>
		
						<p class="q">
							<a href="#">${cslist.csTitle}</a>
						</p>
						<p class="a">${cslist.csContent}</p>
					</li>
					</c:if>
					</c:forEach>
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
					
					<li class="head"><span class="num">번호 </span> <span
						class="title">제목</span> <span class="date">등록일</span></li>

					<c:forEach var="cslist" items="${cslist}" varStatus="status">
					<c:if test="${cslist.csSort=='공지사항'}">
					<li class="no2"><a href="#"><span class="num"><em>${status.index+1}</em></span>
							<span class="title">${cslist.csTitle}</span> <span class="date">${cslist.csDate}</span></a>
						<div class="content">
							${cslist.csContent}
						</div></li>
						
					</c:if>
						</c:forEach>
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
							style="width: 250px; height: 30px; border: 2px solid pink; margin-top: 10px;"></li>
						<li class="texttype">휴대전화&nbsp;<input type="text"
							name="phonenum"
							style="width: 250px; height: 30px; border: 2px solid pink; margin-top: 10px;"></li>
						<li class="texttype">전화번호&nbsp;<input type="text" name="hnum"
							style="width: 250px; height: 30px; border: 2px solid pink; margin-top: 10px;"></li>
						<li class="texttype">이메일&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="email"
							style="width: 250px; height: 30px; border: 2px solid pink; margin-top: 10px;"></li>
						<li class="texttype">&nbsp;제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="text" name="subject"
							style="width: 250px; height: 30px; border: 2px solid pink; margin-top: 10px;"></li>
						<li class="textarea" placeholder="내용을 입력하세요.">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea
								name="content" class="content" cols="40" rows="5"
								style="margin-top: 10px; border: 2px solid pink;"> 
					</textarea>
						</li>
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="submit" value="문의하기" onclick="check()" class="submit"
							style="background-color: white; padding: 15px 32px; text-align: center; border: 1px solid black;text-decoration: none; display: inline-block; font-size: 16px;">
							<input type="reset" value="취소"
							style="background-color: white; padding: 15px 32px; text-align: center; border: 1px solid black;text-decoration: none; display: inline-block; font-size: 16px;"></li>
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
