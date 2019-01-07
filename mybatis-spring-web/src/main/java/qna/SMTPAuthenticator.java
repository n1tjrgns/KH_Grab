package qna;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
/**
* @author Ray
*
*/
public class SMTPAuthenticator extends Authenticator {
protected PasswordAuthentication getPasswordAuthentication() {
 String username = "이메일번호"; // gmail 사용자;
 String password = "비밀번호";  // 패스워드;
 return new PasswordAuthentication(username, password);
}
}
