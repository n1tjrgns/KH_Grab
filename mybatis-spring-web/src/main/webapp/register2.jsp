<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript"
	src="http://t1.daumcdn.net/cssjs/postcode/1506320738556/170925.js"></script>
<link href="_resource/css/common.css" rel="stylesheet" />
<script src="https://apis.google.com/js/client.js?onload=load_google"></script>
<link href="_resource/css/register.css" rel="stylesheet" />
<title>Grab : Grab 회원가입</title>

</head>
<body>
	
	<jsp:include page="navi-header.jsp"></jsp:include> 

		<div id="contents">
			<form name="joinForm" id="joinForm" class="member-form" action="Main_login_regist1" method="post">
		    <input type="hidden" name="email_flg" id="email_flg" value="N">  
			<input type="hidden" name="checked_email" id="checked_email" value=""> 
			 <input type="hidden" name="agree_sms" id="agree_sms" value="N">  
			 <input type="hidden" name="agree_email" id="agree_email" value="N">  
			<input type="hidden" name="checked_cellular" id="checked_cellular" value="">

			<div class="reg_content">
						<h2>이메일 주소 회원가입</h2>
						<br/><br/>
						<div class="reg_box">
								<h4><a href="Main_login_regist2">업체 회원가입</a></h4>은 이곳을 클릭하세요
							<div class="reg_form">
						<!-- 이름  -->
							<p class="txt">이름</p>
								<div class="input_box email_reg_name" id="email_reg_name">
									<input type="text"  name="mName" placeholder="이름"
										maxlength="70">
								</div>
						<!-- 이메일 -->
						<p class="txt">이메일</p>
						<div class="email_box">
							<div class="input_box email_reg_email" id="email_reg_email">
								<input type="text" name="mEmail1" placeholder="이메일"
									maxlength="70">
							</div>
							

						</div>
						<a href="javascript:void(0);" class="btn_email_agree1 btn_agree">
									<span class="ico"></span> <span>이메일 수신에 동의합니다.</span><br>
									(문의 답변 메일, 버킷 리스트 업데이트 알림 등 꼭 필요한 메일만 발송합니다.)
								</a>
							
								<!-- 비밀번호 -->
								<p class="txt">비밀번호</p>
								<div class="password_box">
									<div class="input_box email_reg_password" id="email_reg_password">
										<input type="password" placeholder="비밀번호" name="mPw"
											maxlength="40">
									</div>
									<div class="input_box email_reg_password_check" id="email_reg_password_check">
										<input type="password" placeholder="비밀번호확인" maxlength="40" >
									</div> 
								</div>
								<p class="password_check_txt" style="display: none;" id ="password_check_txt">영문
									대/소문자, 숫자, 특수문자 중 3조합 8자리</p>

								<p class="txt">영문 대/소문자, 숫자, 특수문자 중 3조합 8자리</p> 
							<!-- 생일 -->
								  <div class="email_box">
									<p class="txt">생일</p>
									<div class="input_box email_reg_birth" id="email_reg_birth">
										<input type="date" placeholder="생일" name="mBirth" maxlength="50">
									</div>
								</div> 
							<!-- 성별 -->
							
							<div class="phone_box">
									<p class="txt">성별</p>					
								<select id="email_reg_phone" name="mGen" class="input_box email_reg_gen" id="email_reg_gen">
									<option>성별(선택)</option>
									<option>남성</option>
									<option>여성</option>
								</select>						
							</div>
	 					<br>
	 					<br>
	 					<br>
				<!-- 연락처 -->
						<div class="phone_box">
							<p class="txt">연락처</p>
							<select id="email_reg_phone" name="cell1" class="email_reg_phone">
								<option>연락처 (선택)</option>
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
								<option>019</option>
							</select>
							<div class="input_box email_reg_phone1" id="email_reg_phone1">
								<input type="tel" name="cell2" maxlength="4"
									onkeydown="register.numberKeyPress(event);"
									onpaste="return false;" oncopy="return false;">
							</div>
							<div class="input_box email_reg_phone2" id="email_reg_phone2">
								<input type="tel" maxlength="4" name="cell3"
									onkeydown="register.numberKeyPress(event);"
									onpaste="return false;" oncopy="return false;">
							</div>

						</div>
						<a href="javascript:void(0);" class="btn_email_agree2 btn_agree">
									<span class="ico"></span> <span>SMS 수신에 동의합니다.</span><br>
									(경품 발송 및 마케팅을 위한 SMS만 발송합니다.)
								</a>
								
								<!-- 주소 -->
								 <p class="txt">주소</p>
								<div class="email_box">
									<div class="input_box email_reg_email" id="email_reg_addr">
										<input type="text" placeholder="우편번호" id="sample4_postcode" name="mPost">
									</div>

									<div class="input_box email_reg_email3">
										<input type="button" onclick="sample4_execDaumPostcode()"
											value="우편번호 찾기">
									</div>
								</div>

								<div class="input_box email_reg_phone2" id="email_reg_addr1">
									<input type="text" placeholder="도로명주소" id="sample4_roadAddress" name="mAddr">
								</div>
								<div class="input_box email_reg_phone2" id="email_reg_addr2">
									<input type="text" placeholder="나머지주소" id="address_detail" name="mAddr_d"> 



								</div>
								<div class="reg_form bottom">
									<div class="agree_box">
										<a href="javascript:void(0);"
										class="btn_email_agree3 btn_agree"> <span class="ico"></span>
											<span class="title">이용약관 동의</span>
										</a>
										<div class="text_box">
											<div class="clearfix">




												<h3>제1조 (목적)</h3>
												<div class="term_desc">본 약관은 한화생명보험주식회사 (이하 "회사”)가
													제공하는 Grab Bucket List웹사이트(Grabbucket.com) 및
													모바일(m.Grabbucket.com)서비스(이하 "서비스”)의 이용 조건 및 절차 등에 관한 기본적인
													사항을 규정함을 목적으로 합니다.</div>
												<h3>제2조 (용어의 정의)</h3>
												<div class="term_desc">
													①본 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br> 가. 이용자 : 서비스에 접속하여
													이 약관에 따라 회사가 제공하는 서비스를 받는 회원 및 비회원<br> 나. 회원 : 회사와 서비스
													이용계약을 체결하고 회원아이디를 부여 받은 개인<br> 다. 회원아이디 : 이용자 식별과 이용자의
													서비스 이용을 위하여 서비스 계약 체결 시 이용자의 선택에 의하여 결정하는 회원의 이메일 주소<br>
													라. 비밀번호 : 회원아이디와 일치된 회원임을 확인하고 회원 자신의 비밀보호를 위하여 회원 자신이 선정한
													영어 또는 숫자, 특수문자의 조합<br> ② 본 약관에서 사용하는 용어의 정의는 제1항 각호에서
													정하는 것을 제외하고는 관계법령 및 기타 일반적인 상관례에 의합니다.
												</div>
												<h3>제3조 (약관에의 동의)</h3>
												<div class="term_desc">회원이 되고자 하는 자가 회사가 정한 소정의 절차를
													거쳐서 회원등록을 하면 본 약관에 동의하는 것으로 간주합니다.</div>
												<h3>제4조 (약관의 게시와 개정)</h3>
												<div class="term_desc">
													① 본 약관은 그 내용을 웹사이트(Grabbucket.com) 및 모바일
													웹사이트(m.lifeplusbucket.com)(이하 통칭하여 "웹사이트")에 게시합니다.<br>
													② 회사는 영업상 중요 사유, 사정 변경, 기타 회사가 필요하다고 인정하는 경우, "약관의 규제에 관한
													법률", "정보통신망 이용촉진 및 정보보호 등에 관한 법률"(이하 "정보통신망법")" 등의 관련법령을
													위반하지 않는 범위에서 본 약관의 내용을 개정할 수 있습니다.<br> ③ 회사가 본 약관을 개정할
													경우에는 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행 약관과 함께 제1항의 방식에 따라 그
													개정약관의 적용일자 ( )일 전부터 적용일자 전일까지 웹사이트에 공지합니다. 다만, 회원에게 불리한
													내용으로 약관을 개정하는 경우에는 공지 외에 회원정보로 등록된 이메일 또는 로그인시 동의 창 등의 전자적
													수단을 통해 별도로 명확히 통지합니다.<br> ④ 회사가 제4항에 따라 공지하면서 회원에게 (
													)일 이내에 개정약관에 대한 거부의 의사표지를 하지 않으면 승인하는 것으로 본다는 뜻을 명확하게
													공지하였음에도 회원이 전화, 이메일, 모사전송 등의 방법을 통해 명시적으로 거부의 의사표시를 하지 아니한
													경우에는 회원이 개정약관에 동의한 것으로 봅니다.<br> ⑤ 회원이 개정약관에 동의하지 않는 경우
													회사는 당해 회원에 대해 개정약관의 내용을 적용할 수 없으며, 이 경우 회원 또는 회사는 이용계약을 해지할
													수 있습니다.
												</div>
												<h3>제5조(약관 외 준칙 등)</h3>
												<div class="term_desc">본 약관에서 정하지 아니한 사항과 본 약관의 해석에
													관하여는 "약관의 규제에 관한 법률", "정보통신망법" 등 관련 법령에 따릅니다.</div>
												<h3>제6조 서비스 이용계약의 체결</h3>
												<div class="term_desc">
													① 이용계약은 회원이 되고자 하는 자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고, 회사가
													이러한 신청에 대하여 승낙함으로써 체결됩니다.<br> ② 회원에 가입하여 서비스를 이용하고자 하는
													희망자는 제11조에서 요청하는 개인 신상정보를 제공해야 합니다.<br> ③ 회사는 제1항과 같이
													회원으로 가입할 것을 신청한 이용자를 회원으로 등록함을 원칙으로 합니다. 다만, 회사는 다음 각 호의 어느
													하나에 해당하는 회원가입신청에 대하여는 이를 승낙하지 아니 합니다.<br> 가. 등록 내용에
													허위, 기재누락, 오기가 있거나 허위서류를 첨부하여 신청한 경우<br> 나. 타인의 명의를
													사용하여 신청한 경우<br> 다. 14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한
													경우<br> 라. 사회의 안녕질서 혹은 미풍양속을 저해할 목적으로 신청하였을 경우<br>
													마. 기타 회원으로 회사 소정의 이용신청요건을 충족하지 못하는 경우<br> ④ 회사는 이용신청에
													대하여 승낙한 이후 해당 신청이 제3항의 각 호의 어느 하나에 해당하는 사실을 알았을 경우, 그 승낙을
													취소할 수 있습니다.<br> ⑤회사가 이용신청을 승낙하는 때에는 다음 각 호의 사항을 회원에게
													이메일로 통지 합니다.<br> 가. 회원 아이디<br> 나. 서비스 이용 개시일<br>
													다. 기타 회사가 필요하다고 인정하는 사항

												</div>
												<h3>제7조 (회원정보의 변경)</h3>
												<div class="term_desc">
													① 회원은 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한
													아이디는 수정이 불가능합니다.<br> ② 회원은 회원가입 시 등록한 사항에 변경이 있는 경우
													회원정보변경 항목을 통해 직접 변경사항을 수정, 등록하여야 합니다.<br> ③ 회원이 제2항의
													변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.
												</div>
												<h3>제8조 (회원에 대한 통지)</h3>
												<div class="term_desc">
													① 회사가 특정 회원에 대해 개별적으로 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스에 회원이
													등록한 이메일 등으로 할 수 있습니다.<br> ② 회사는 회원 전체에 대한 통지의 경우 7일 이상
													웹사이트 또는 서비스 내 화면에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.
												</div>

												<h3>제9조 (회사의 의무)</h3>
												<div class="term_desc">
													① 회사는 관련 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로
													서비스를 제공하기 위하여 최선을 다하여 노력합니다.<br> ② 회사는 회원이 안전하게 서비스를
													이용할 수 있도록 개인정보보호를 위해 보안시스템을 갖추어야 하며 개인정보 처리방침을 웹사이트에 공시하고
													준수합니다.<br> ③ 회사는 회원이 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.
												</div>

												<h3>제10조 (회원의 회원아이디와 비밀번호 관리에 대한 의무)</h3>
												<div class="term_desc">
													① 회원아이디와 비밀번호에 관한 모든 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는
													안됩니다.<br> ② 회원에게 부여된 회원아이디와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는
													모든 결과에 대한 책임은 회원에게 있으며, 이 경우 회원아이디는 삭제될 수 있습니다.<br> ③
													자신의 회원아이디가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 즉시 통지해야 합니다.<br>
													④ 제3항의 경우 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지
													않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.<br> ⑤ 회사는 회원의 회원아이디가
													개인정보 유출의 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인할 우려가
													있는 경우, 해당 회원아이디의 이용을 제한할 수 있습니다.
												</div>
												<h3>제11조 (개인정보보호 의무)</h3>
												<div class="term_desc">
													① 회사는 회원가입을 위한 이용자 정보 수집 시 필요한 최소한의 정보를 수집합니다. 다음 사항을
													필수사항으로 하며 그 외 사항은 선택사항으로 합니다. <br> 가. 성명 <br> 나.
													이메일주소<br> 다. 비밀번호  <br> ② 회사가 회원의 개인정보를 수집, 이용하는
													때에는 반드시 당해 회원에게 목적을 고지하고 동의를 받습니다.<br> ③ 회사는 수집된 개인정보를
													본 약관의 목적 외의 용도로 이용하지 않으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는
													경우에는 이용·제공단계에서 당해 회원에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리
													정함이 있는 경우에는 예외로 합니다.
												</div>

												<h3>제12조 (게시물의 관리)</h3>
												<div class="term_desc">
													①회사는 회원이 게시하거나 등록하는 서비스내의 내용물이 다음 각 호중 어느 하나에 해당한다고 판단되는
													경우에 사전통지 없이 삭제할 수 있습니다.<br> 가. 다른 회원 또는 제3자에게 피해를 입히는
													내용인 경우<br> 나. 공공질서 및 미풍양속에 위반되고 범죄적 행위에 결부된다고 인정되는 내용일
													경우<br> 다. 회사에서 규정한 게시기간을 초과한 경우 기타 관계법령에 위반된다고 판단되는 경우<br>
													② 회원의 게시물이 “정보통신망법”, “저작권법”, “청소년보호법” 등 현행 법령이나 미풍양속에 위반되는
													내용을 포함하여 피해자나 권리자가 관련 법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을
													요청하는 경우, 회사는 관련 법령에 따른 조치를 취할 수 있습니다.
												</div>
												<h3>제13조 (게시물에 대한 권리와 이용권한)</h3>
												<div class="term_desc">
													① 게시물에 대한 권리와 책임은 게시자에게 있으며 회사는 게시자의 동의 없이는 이를 영리적 목적으로 사용할
													수 없습니다. 단, 비영리적인 목적인 경우 회사는 서비스내의 게재권을 갖습니다.<br> ②
													이용자는 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할
													수 없습니다.
												</div>
												<h3>제14조(서비스 이용시간)</h3>
												<div class="term_desc">
													① 서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로
													합니다.<br> ② 제1항에도 불구하고 정기 점검 등의 필요로 회사가 정한 날이나 시간은 미리
													공지하며 이 경우는 예외로 합니다.<br> ③ 회사는 국가비상사태, 정전, 서비스 설비의 장애
													또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를
													제한하거나 정지할 수 있습니다.
												</div>
												<h3>제 15조 (이용계약해지 및 이용제한)</h3>
												<div class="term_desc">
													① 회원은 회사에 언제든지 탈퇴를 요청할 수 있으며 회사는 즉시 탈퇴를 처리합니다.<br> ②
													회사는 회원이 다음 각 호중 어느 하나의 사유에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을
													해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.<br> 가. 타인의 회원아이디
													및 비밀번호를 도용하고, 타인에게 피해를 입힌 경우<br> 나. 서비스 운영을 고의로 방해하고
													회사의 서비스를 이용해 사회적인 물의를 일으킨 경우<br> 다. 가명으로 가입하거나 같은 사용자가
													다른 회원아이디로 이중등록을 한 경우<br> 라. 기타 회사가 정한 이용조건에 위반한 경우
												</div>
												<h3>제 16조 (지식재산권의 귀속)</h3>
												<div class="term_desc">
													① 회사가 작성한 저작물에 대한 저작권 기타 지식재산권은 회사에 귀속합니다.<br> ② 이용자는
													서비스를 이용함으로써 얻은 정보 중 회사에게 지식재산권이 귀속된 정보를 회사의 사전 승낙 없이 복제,
													송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는
													안됩니다.<br> ③ 회사는 약정에 따라 회원에게 귀속된 저작권을 사용하는 경우 당해 회원에게
													통보하여야 합니다.
												</div>
												<h3>제 17조 (손해배상)</h3>
												<div class="term_desc">회사는 서비스와 관련하여 이용자에게 어떠한 손해가
													발생하더라도 동 손해가 회사의 고의 또는 중대한 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지
													아니합니다.</div>
												<h3>제 18조 (손해배상 면책조항)</h3>
												<div class="term_desc">
													① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에
													관한 책임이 면제됩니다.<br> ②회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여
													책임을 지지 않습니다.<br> ③회사는 회원이 서비스를 이용하여 기대하는 손익이나 서비스를 통하여
													얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br> ④회사는 회원이 서비스에 게재한
													정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.
												</div>
												<h3>제 19조 (분쟁의 해결)</h3>
												<div class="term_desc">
													① 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야
													합니다.<br> ② 제1항의 규정에도 불구하고 회사와 회원 사이에 소송이 제기될 경우, 소송은
													회사의 본점 소재지를 관할하는 법원을 관할 법원으로 합니다.
												</div>
												<p class="term_desc_option">부칙: (시행일)이 약관은 2016년 9월 9일부터
													시행합니다.</p>
											</div>
										</div>
										<a href="javascript:void(0);"
										class="btn_email_agree4 btn_agree"> <span class="ico"></span>
											<span class="title">개인정보 수집 및 이용 동의</span>
										</a>
										<div class="text_box">
											<div class="clearfix">

												<div class="term_desc_top">'한화생명보험주식회사'(이하 '회사'라
													합니다.)은 고객님의 개인정보를 중요시하며, 개인정보 보호법 및 정보통신망 이용촉진 및 정보보호 등에 관한
													법률(이하 ‘정보통신망법’)을 준수하고 있습니다. 회사는 개인정보 처리방침을 통하여 고객님께서 제공하시는
													개인정보가 어떠한 용도의 방식으로 이용되고 있으며, 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지
													알려드립니다. 회사는 개인정보 처리방침을 개정하는 경우 웹사이트의 'Event'메뉴 또는 팝업안내를 통하여
													공지할 것입니다. 이용자들께서는 서비스 이용 시 수시로 확인하시기 바랍니다.</div>
												<div class="clear_line"></div>
												<div class="term_desc_detail">
													<p class="term_desc_clear">회사의 '개인정보 처리방침'은 아래와 같은 내용을
														담고 있습니다.</p>
													1. 개인정보 수집에 대한 동의<br> 2. 수집하는 개인정보 항목<br> 3.
													개인정보의 수집 및 이용목적<br> 4. 개인정보의 제 3자 제공에 관한 사항<br>
													5. 개인정보의 보유 및 이용기간<br> 6. 개인정보의 파기 절차 및 방법<br> 7.
													수집한 개인정보의 위탁<br> 8. 이용자 및 법정대리인의 권리와 의무<br> 9. 개인
													정보 수집, 이용, 제공에 대한 동의철회<br> 10. 개인정보 자동수집 장치의 설치, 운영 및
													그 거부에 관한 사항<br> 11. 개인정보의 기술적/관리적 보호대책<br> 12.
													개인정보에 관한 민원서비스<br> 13. 고지의 의무
												</div>
												<hr>

												<h3>1. 개인정보 수집에 대한 동의</h3>
												<div class="term_desc">회사는 고객님께서 회원가입 시 '개인정보 수집 및 이용에
													관한 동의' 대하여 「동의한다」 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하고 있으며,
													「동의한다」버튼을 클릭하면 개인정보 수집 및 이용에 대해 동의한 것으로 봅니다.</div>
												<h3>2. 수집하는 개인정보의 항목 및 수집방법</h3>
												<div class="term_desc">
													<h4 class="term_desc_clear">가. 수집하는 개인정보 항목</h4>
													<p class="term_desc_sub">회사는 회원가입,상담,서비스 신청 등을 위해 아래와
														같은 개인정보를 수집하고 있습니다.</p>
													<p class="term_desc_sub">
														[회원가입을 통한 수집항목]<br> - 필수항목: 성명, 이메일주소, 비밀번호<br>
														- 선택항목: 휴대전화 번호
													</p>
													<p class="term_desc_sub"></p>
													<h4 class="term_desc_clear">나. 개인정보 수집방법</h4>
													회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br> - 홈페이지(회원가입, 이벤트 참여)
													<p></p>
												</div>
												<h3>3. 개인 정보의 수집 및 이용목적</h3>
												<div class="term_desc">
													<p class="term_desc_clear">회사는 수집한 개인정보를 다음의 목적을 위해
														활용합니다.</p>
													<h4 class="term_desc_clear">가. 서비스 제공에 관한 계약이행</h4>
													<p class="term_desc_sub">- 콘텐츠 제공 및 특정 맞춤 서비스 제공, 물품배송
														등</p>
													<h4 class="term_desc_clear">나. 회원 관리</h4>
													<p class="term_desc_sub">- 회원제 서비스 이용에 따른 본인확인, 개인식별,
														불량회원의 부정 이용방지와 비인가 사용방지, 가입의사확인, 만14세 미만 아동 개인정보 수집 시 법정
														대리인 동의여부 확인, 불만처리 등 민원처리, 고지사항 전달</p>
													다. 마케팅 및 광고에 활동<br>
													<p class="term_desc_sub">
														- 이벤트 등 광고성 정보 전달, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br>
														- 접속 빈도 파악 또는 서비스 이용에 대한 통계
													</p>
												</div>
												<h3>4. 개인정보의 제 3자 제공에 관한 사항</h3>
												<div class="term_desc">
													<p class="term_desc_clear">홈페이지에서 수집된 개인정보는 당사의 업무위탁과
														관계 없이는 원칙적으로 외부에 제공하지 않습니다. 다만, 다음의 경우에는 예외로 합니다.</p>
													가. 이용자들이 사전에 동의한 경우<br> 나. 기타 법률의 규정에 의거하거나, 수사 목적으로
													법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우
												</div>

												<h3>5. 개인정보의 보유 및 이용기간</h3>
												<div class="term_desc">
													가. 고객의 개인정보는 회사가 고객에게 서비스를 제공하는 기간 동안에 보유 및 이용됩니다. 삭제요청 시
													수집된 개인의 정보가 열람 또는 이용될 수 없도록 파기 처리됩니다. 다만, 관계법령의 규정에의 상법 및
													‘전자상거래등에서 소비자보호에 관한 법률’, 전자금융거래법, 여신전문금융업법 국세기본법, 법인세법,
													부가가치세법 등 관련 법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인을 위하여 일정기간
													보유하여야 할 필요가 있을 경우 개인정보는 일정기간 보유되며, 이 때 보유되는 개인정보의 열람 및 이용은
													해당 사유로 국한되며, 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여야 합니다. 또한 장기
													미로그인(로그인을 하지 않고 일정기간(1년)경과) 고객은 고객계정을 휴면계정으로 전환하고, 별도의 장치에
													안전하게 보관합니다. 다만, 다음의 경우에는 예외로 합니다. <br> <br> 나. 하여
													보존할 필요성이 있는 경우에는 관계법령에 따라 보존합니다. 고객에게 미리 고지하고 그 보유기간이 경과하지
													아니한 경우와 개별적으로 귀하의 동의를 받은 경우에는 약속한 보유기간 | 일반회원 정보 : 탈퇴 요청 후
													바로 파기<br> <br> 다. 고객님의 동의를 받아 보유하고 있는 거래정보에 대해
													고객님께서 열람을 요구하는 경우에는 지체 없이 그 열람•확인할 수 있도록 조치합니다.<br>
												</div>

												<h3>6. 개인정보의 파기절차 및 방법</h3>
												<div class="term_desc">
													<p class="term_desc_clear">파기절차 및 방법은 다음과 같습니다.</p>
													<h4 class="term_desc_clear">가. 파기절차</h4>
													<p class="term_desc_sub">
														홈페이지 회원이 회원 탈퇴 요청, 개인정보의 수집·이용 등에 대한 동의 철회, 개인정보 삭제 또는 파기
														요청 시까지 보유·이용하며, 수집·이용 목적을 달성한 경우 또는 탈퇴·동의 철회의 요청이 있는 경우 해당
														개인정보를 즉시 파기합니다. <br> 다만, 다음의 경우에는 예외로 합니다.<br>-
														기타 법률에 의해 이용자의 개인정보를 보존해야 할 필요가 있는 경우에는 해당 법률의 규정에 따릅니다.
													</p>
													<h4 class="term_desc_clear">나. 파기방법</h4>
													<p class="term_desc_sub">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수
														없는 기술적 방법을 사용하여 삭제합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여
														파기합니다.</p>

												</div>
												<h3>7. 개인정보의 취급 위탁</h3>
												<div class="term_desc">
													<p class="term_desc_clear">회사는 서비스 이행을 위해 아래와 같이 외부
														전문업체에 위탁하여 운영하고 있으며, 관계 법령에 따라 위탁 계약 시 개인정보가 안전하게 관리 될 수
														있도록 필요한 사항을 규정하고 있습니다. 회사의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와
														같습니다.</p>
													- 위탁 대상자 : 한화S&amp;C(주)<br> - 위탁업무 내용 : 웹사이트 및 시스템 관리,
													이벤트 당첨자 고지 및 안내 메일 발송<br> - 개인정보의 보유 및 이용기간: 회원탈퇴 시 혹은
													위탁 계약 종료 시까지<br> <br> - 위탁 대상자 : (주)한컴, (주)안그라픽스<br>
													- 위탁업무 내용 : 고지사항 전달, 이벤트 등 광고성 정보 전달, 이벤트 당첨자 고지 및 안내 메일 발송<br>
													- 개인정보의 보유 및 이용기간: 회원탈퇴 시 혹은 위탁 계약 종료 시까지
												</div>

												<h3>8. 이용자 및 법정대리인의 권리와 의무</h3>
												<div class="term_desc">
													- 고객의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해 주시기 바랍니다. 이용자가
													입력한 부정확한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를
													입력할 경우 그 책임은 이용자에게 있습니다.<br> - 고객께서는 개인정보를 보호받을 권리와 함께
													스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 계십니다.<br> - 고객의
													개인정보가 유출되지 않도록 조심하시고 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해주십시오.
													만약 이 같은 책임을 다하지 못하고 타인의 정보 및 존엄성을 훼손할 시에는 『정보 통신망 이용 촉진 및
													정보 보호 등에 관한 법률』등에 의해 처벌받을 수 있습니다.
												</div>

												<h3>9. 개인 정보 수집, 이용, 제공에 대한 동의 철회</h3>
												<div class="term_desc">
													- 이메일 문의 등을 통해 개인정보의 수집, 이용, 제공에 대해 동의하신 내용을 고객께서는 언제든지
													철회하실 수 있습니다.<br> - 동의 철회는 개인정보 관리 책임자에게 서면, 전화, 이메일
													등으로 연락하시면 즉시 개인정보의 삭제 등 필요한 조치를 하겠습니다. 동의 철회를 하고 개인정보를 파기하는
													등의 조치를 취한 경우에는 그 사실을 고객께 지체 없이 통지하도록 하겠습니다.
												</div>

												<h3>10. 개인 정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h3>
												<div class="term_desc">
													<p class="term_desc_clear">회사는 귀하의 정보를 수시로 저장하고 찾아내는
														‘쿠키’를 운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주
														작은 텍스트파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사는 다음과 같은 목적을 위해 쿠키를
														사용합니다.</p>
													<p class="term_desc_clear">
														- 고객의 접속 빈도나 방문 시간 등을 분석하고 이용자의 취향과 관심분야를 파악하여 타겟(target)
														마케팅 및 서비스 개편 등의 척도로 활용합니다.<br> - 귀하는 쿠키 설치에 대한 선택권을
														가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가
														저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
													</p>
													<h4 class="term_desc_clear">가. 쿠키 설정을 거부하는 방법</h4>
													<p class="term_desc_sub">- 쿠키 설치 허용 여부를 지정하는 방법</p>
													<p class="term_desc_sub">
														* Internet Explorer 을 사용하고 있는 경우<br> 1. [도구] 메뉴에서
														[인터넷 옵션]을 선택합니다.<br> 2. [개인정보 탭]을 클릭합니다.<br> 3.
														[개인정보보호 수준]을 설정하시면 됩니다.
													</p>
													<p class="term_desc_sub">- 받은 쿠키를 보는 방법</p>
													<p class="term_desc_sub">
														* Internet Explorer 을 사용하고 있는 경우<br> 1. [작업 표시줄]에서
														[도구]를 클릭한 다음<br> 2. [인터넷 옵션]을 선택합니다.<br> 3. [일반
														탭(기본 탭)]에서 [설정]을 클릭한 다음<br> 4. [파일 보기]를 선택합니다.
													</p>
													<p class="term_desc_sub">귀하께서 쿠키 설치를 거부하셨을 경우 회사 서비스
														이용에 어려움이 있을 수도 있음을 알려드립니다.</p>

												</div>


												<h3>11. 개인정보보호를 위한 기술적/관리적 대책</h3>
												<div class="term_desc">
													<p class="term_desc_clear">
														회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실,도난,누출,변조 또는 훼손되지 않도록
														안전성확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.<br>
													</p>
													가. 기술적인 대책<br>
													<p class="term_desc_sub">
														① 회원님의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하거나 파일 잠금
														기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.<br> ②
														회사는 백신프로그램을 이용하여 컴퓨터바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다.
														백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현될 경우 백신이 나오는 즉시 이를
														적용함으로써 개인정보가 침해되는 것을 방지하고 있습니다.<br> ③ 회사는 암호알고리즘을
														이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고
														있습니다.<br> ④ 해킹 등에 의해 귀하의 개인정보가 유출되는 것을 방지하기 위하여,
														외부로부터의 침입을 차단하는 장치를 이용하고 있으며 주요 서버마다 침입탐지시스템을 설치하여 24시간
														침입을 감시하고 있습니다.
													</p>
													나. 관리적 대책<br>
													<p class="term_desc_sub">
														① 회사는 고객의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에
														해당하는 자는 다음과 같습니다.<br> • 정보주체를 직접 상대로 하여 마케팅 업무를 수행하는
														자<br> • 개인정보보호책임자 및 담당자 등 개인정보관리업무를 수행하는 자<br> •
														기타 업무상 개인정보의 취급이 불가피한 자<br> ② 개인정보를 취급하는 직원을 대상으로 새로운
														보안 기술 습득 및 개인정보 보호 의무 등에 관해 정기적인 사내 교육 또는 외부위탁교육을 실시하고
														있습니다.<br> ③ 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게
														이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.<br> ④
														개인정보와 일반 데이터를 혼합하여 보관하지 않고 별도로 분리하여 보관하고 있습니다. 전산실 및 자료
														보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다.
													</p>
												</div>

												<h3>12. 개인정보에 관한 민원 서비스</h3>
												<div class="term_desc">
													<p class="term_desc_clear">회사는 고객의 개인정보를 보호하고 개인정보와 관련된
														불만을 처리하기 위하여 아래와 같이 관련부서 및 개인정보관리 책임자를 지정하고 있습니다.</p>
													가. 개인정보 보호책임자<br>
													<p class="term_desc_sub">
														- 담당자 : 이만재<br> - 직 책 : 개인정보 보호 책임자<br> - 전화번호 :
														080-789-8114<br> - E-mail : privacy.life@hanwha.com
													</p>
													나. 개인정보 보호담당자<br>
													<p class="term_desc_sub">
														- 담당자 : IT보안파트 개인정보 보호 담당자<br> - 전화번호 : 080-789-8114<br>
														- E-mail : privacy.life@hanwha.com
													</p>

													<p class="term_desc_clear">귀하께서는 회사의 서비스를 이용하시며 발생하는 모든
														개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의
														신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 문의사항은 사이트 내 FAQ 문의하기를
														이용해주세요. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
													</p>
													[개인정보침해신고센터] : (국번없이)118, URL : http://privacy.kisa.or.kr<br>
													[개인정보분쟁조정위원회] : (국번없이)118, URL : http://privacy.kisa.or.kr<br>
													[대검찰청 사이버범죄수사단] : 02-3480-3573, URL : http://www.spo.go.kr<br>
													[경찰청 사이버테러대응센터] : 1566-0112, URL : http://www.netan.go.kr

												</div>

												<h3>13. 고지의 의무</h3>
												<div class="term_desc">
													현 개인정보 처리방침은 2016년 9월 9일부터 적용되며, 법령, 정책 또는 보안기술의 변경에 따라 내용의
													추가, 삭제 및 수정이 있을 시에는 변경사항의 시행일의 7일전부터 사이트 내 ‘Evnet’메뉴 또는 팝업
													안내를 통하여 고지할 것입니다.<br> * 개인정보 처리방침 버전번호 : 1.0<br>
													* 개인정보 처리방침 시행일자 : 2016년 09월 09일
												</div>
											</div>
										</div>
										<a href="javascript:void(0);"
										class="btn_email_agree5 btn_agree"> <span class="ico"></span>
											<span class="title">개인정보 위탁 고지</span>
										</a>
										<div class="table_box">
											<table>
												<caption>개인정보 위탁 고지</caption>
												<colgroup>
													<col width="200px"> 
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>수탁자</th>
														<th>위탁업무</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>KH</td>
														<td>웹사이트 유지보수, 웹사이트를 통한 개인정보의 수집·보관, 이메일 발송</td>
													</tr>
													<tr>
														<td>공란</td>
														<td>웹사이트 시스템 관리/운영 유지보수</td>
													</tr>
													<tr>
														<td>2(kc)</td>
														<td>웹사이트 시스템 관리/운영 유지보수</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div class="all_agree_box" id="all_agree_box">
									<a href="javascript:void(0);" class="btn_all_agree btn_agree">
										<span class="ico"></span> <span class="title">위 약관에 전체
											동의</span>
									</a>
								</div>
								<div class="btn_area">
											<a href="#" onclick="javascript:inputCheck();"
									class="btn_click btn_register mot2"
									onclick='eventTrack("", "email_register_btn_complete");'>회원
									가입</a>
								
										
										<a href="Main" class="btn_cancel mot2"
										onclick='eventTrack("", "email_register_btn_cancel");'>취 소</a>
								</div>
								<p class="bottom_txt">
									* Grab은 <span>만 14세</span> 이상만 가입할 수 있습니다.
									<!-- 2017-03-13 -->
								</p>
							</div>
						</div>
					</div>
				</form>
				</div>
				
				<!--  <div class="pop_layer pop_complete pop_email_complete">
					<div class="pop_inner">
						<div class="text_area">
							<p class="text_p">
								<span>이메일 주소 회원 가입이 완료</span>되었습니다.<br> 로그인 팝업으로 이동합니다.
							</p>
						</div>
						<a href="Main" class="btn_confirm mot2">확인</a>
					</div>
				</div>  -->
			



	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="_resource/js/vendor/CustomTW.js"></script>
	<script src="_resource/js/common.js"></script>
	<script src="_resource/js/login.js"></script>
	<script src="_resource/js/common_biz.js"></script>
	<script src="_resource/js/register.js"></script>
	<script src="_resource/js/common_biz.js"></script>
<script>
	var $emailRegName = $('#email_reg_name').find('input'), 
		$emailRegEmail = $('#email_reg_email').find('input'), 
		$emailRegPw = $('#email_reg_password').find('input'), 
		$emailRegPwCheck = $('#email_reg_password_check').find('input'),
		$emailRegBirth = $('#email_reg_birth').find('input'),
		$emailRegGen = $('#email_reg_gen').find('input'),
		$emailRegPhone1 = $('#email_reg_phone1').find('input'), 
		$emailRegPhone2 = $('#email_reg_phone2').find('input'),
		$emailRegAddr = $('#email_reg_addr').find('input'),
		$emailRegAddr1 = $('#email_reg_addr1').find('input'),
		$emailRegAddr2 = $('#email_reg_addr2').find('input'),
		$emailAgree1 = $('.btn_email_agree1'), 
		$emailAgree2 = $('.btn_email_agree2'), 
		$emailAgree3 = $('.btn_email_agree3'), 
		$emailAgree4 = $('.btn_email_agree4'), 
		$emailAgree5 = $('.btn_email_agree5'), 
		$emailAgree6 = $('.btn_email_agree6'), 
		$allAgree = $('.btn_all_agree');
	
	$('.btn_agree').click(
			function() {
				if (!$(this).hasClass('btn_all_agree')) {
					if ($(this).hasClass('active')) {
						$(this).removeClass('active');
					} else {
						$(this).addClass('active');
					}
					if ($emailAgree3.hasClass('active')
							&& $emailAgree4.hasClass('active')
							&& $emailAgree5.hasClass('active')) {
						$allAgree.addClass('active');
					} else {
						$allAgree.removeClass('active');
					}
				}
			});
	
	
	$allAgree.click(function() {
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
			$emailAgree3.removeClass('active');
			$emailAgree4.removeClass('active');
			$emailAgree5.removeClass('active');
		} else {
			$(this).addClass('active');
			$emailAgree3.addClass('active');
			$emailAgree4.addClass('active');
			$emailAgree5.addClass('active');
		}
	});
	function inputCheck() {
		var $pwTxt = $("#password_check_txt");
		var $emailRegAgree = $('#btn_email_agree');
		var $emailRegAllAgree = $('#btn_email_all_agree');
		var $email_flg = $("#email_flg"); 
//	$pwTxt.hide();
 		
 			
 			
		if ($emailRegName.val() == '') {
			alert('이름을 입력해주세요');
			$emailRegName.focus();
			return false;
		} 		
		if ($emailRegEmail.val() == ''
				|| $("input[name=email2]").val() == '') {
			alert('이메일을 입력해주세요');
			$emailRegEmail.focus();
			return false;
		} 
		   
		if ($emailRegPw.val() == '') {
			alert('비밀번호를 입력해주세요');
			$emailRegPw.focus();
			return false;
		} //////////////////////////////////////////////////////////////특수 문자 등 나중에 만들기
		if($emailRegPwCheck.val() == '' || $emailRegPw.val() != $emailRegPwCheck.val()){
			alert('동일한 비밀번호로 입력해주세요');
			$emailRegPwCheck.focus();
			return false;
		}
		if($emailRegBirth.val() == ''){
				alert('생일을 입력해주세요');
				$emailRegBirth.focus();
				return false;
		}
		if($emailRegGen.val() == ''){
				alert('성별을 입력해주세요');
				$emailRegGen.focus();
				return false;
		}
		if($emailRegPhone1.val() == ''){
				alert('연락처를 입력해주세요');
				$emailRegPhone1.focus();
				return false;
		}
		if($emailRegAddr.val() == ''){
				alert('우편번호를 입력해주세요');
				$emailRegAddr.focus();
				return false;
		}
		if($emailRegAddr1.val() == ''){
			alert('도로명주소를 입력해주세요');
			$emailRegAddr2.focus();
			return false;
		}
		if($emailRegAddr2.val() == ''){
			alert('나머지주소를 입력해주세요');
			$emailRegAddr2.focus();
			return false;
		}		
	 	if (!$allAgree.hasClass('active')) {
			alert('약관에 모두 동의 해주세요');
			return false;
		 }
			
		document.getElementById('joinForm').submit();
		
	}
	
	
//주소
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}
						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						
					}
				}).open();
	}
	
function load_google() {
		gapi.client.setApiKey('AIzaSyBySGWNccSTO9XHnlay_kpBHAWUO1-d3L4');
		gapi.client.load('urlshortener', 'v1', function() {
		});
	}
</script>	

	<jsp:include page="navi-footer.jsp"></jsp:include> 
</body>
</html>