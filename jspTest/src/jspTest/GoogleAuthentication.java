package jspTest;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator {
	PasswordAuthentication passAuth;
	
	public GoogleAuthentication() {
		passAuth = new PasswordAuthentication("wangwooseuk.dev",
			"njxhkhjknmrayard");
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return passAuth;
	}
}
