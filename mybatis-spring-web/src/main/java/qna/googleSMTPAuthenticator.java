package qna;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
/**
* @author Ray
*
*/
public class googleSMTPAuthenticator extends Authenticator {
protected PasswordAuthentication getPasswordAuthentication() {
 String username = ""; // gmail 사용자;
 String password = "";  // 패스워드;
 return new PasswordAuthentication(username, password);
}
}