package qna;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
/**
* @author Ray
*
*/
public class googleSMTPAuthenticator extends Authenticator {
protected PasswordAuthentication getPasswordAuthentication() {
 String username = "n2tjrgns@gmail.com"; // gmail 사용자;
 String password = "sh276912";  // 패스워드;
 return new PasswordAuthentication(username, password);
}
}