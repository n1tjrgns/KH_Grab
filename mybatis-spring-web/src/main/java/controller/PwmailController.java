package controller;


import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import model.Member;
import qna.SMTPAuthenticator;
import repository.PwmailSessionRepository;

@Controller
public class PwmailController {
	
	@Autowired
	PwmailSessionRepository pwmailSessionRepository;
	
	@RequestMapping(value="/find_password", method = RequestMethod.POST)
	public String updateEmail(Member member, Model model) {
		
		String s="";
		String st[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		Random r = new Random();
		for(int i=1; i<=6; i++) {
			
			s+=st[r.nextInt(26)];
			
		}
		member.setmPw(s);
		Integer result = pwmailSessionRepository.updateEmail(member);		
		model.addAttribute("result",result);
		System.out.println("result : " + result);
		try {
			if(result>=1) {
				mailing(member);
			}else {
				return "mail";
			}
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return "mail";
	}
	
	
	
		public void mailing(Member member) {
			String username = member.getmName();
			String email = member.getmEmail();
			String subject = member.getmEmail()+"님의 비밀번호 찾기 메일입니다.";
			String pw = member.getmPw();
			
			System.out.println("username : " + username);
			System.out.println("email : " + email);
			System.out.println("subject : " + subject);
			System.out.println("pw : " + pw);
			
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
				 // 발신자, 수신자, 참조자, 제목, 본문 내용 등을 설정한다		   
			    
				msg.setSubject(subject); //  제목
	
				StringBuffer buffer = new StringBuffer();
				buffer.append(username+"님의 변경된 임시 비밀번호는 : " + pw + "입니다. <br>");
				buffer.append("비밀번호 재 변경 바랍니다.");
				
				Address fromAddr = new InternetAddress("n2tjrgns@gmail.com","grab");
				msg.setFrom(fromAddr);
	
				Address toAddr = new InternetAddress(email);
				msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
	
				msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 메일의 내용
				Transport.send(msg); // 메일전송 
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}
}
