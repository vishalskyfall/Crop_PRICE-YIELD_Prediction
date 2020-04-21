package com.cropPrediction.utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class BaseMethod {

	
	private static final String ACCESSKEY = "xx";
	private static final String SECRETKEY = "xx";



	public static AmazonS3 configuration() {
		BasicAWSCredentials awsCredentials = new BasicAWSCredentials(ACCESSKEY, SECRETKEY);
		AmazonS3 s3 = AmazonS3ClientBuilder.standard().withCredentials(new StaticCredentialsProvider(awsCredentials)).withRegion(Regions.US_EAST_1).build();
		return s3;
	}
	
	public  static File multipartToFile(MultipartFile multipart, String fileName) throws IllegalStateException, IOException {
		
	    File convFile = new File(System.getProperty("java.io.tmpdir")+"/"+fileName);
	    multipart.transferTo(convFile);
	    return convFile;
	}

	
	public static URL uploadfile(String bucket_name,String key_name,File createFile) {
		final AmazonS3 s3 = configuration();
		if(s3.doesBucketExist(bucket_name)){
	//		s3.putObject(new PutObjectRequest( bucket_name, key_name,new File( createFile.getPath() ) ).withCannedAcl(CannedAccessControlList.PublicRead) );
		s3.putObject(new PutObjectRequest(bucket_name, key_name, new File(createFile.getPath())).withCannedAcl(CannedAccessControlList.PublicRead));
			System.out.println(s3.getUrl(bucket_name, key_name));
			
			createFile.delete();
			}
		return (s3.getUrl(bucket_name, key_name));
		}
		
	

public static File CreateFile(MultipartFile file,String path){
		
		String filename=file.getOriginalFilename();
		try {
			FileOutputStream fos=new FileOutputStream(path+filename);
			BufferedOutputStream bos=new BufferedOutputStream(fos);
			byte[] b=file.getBytes();
			bos.write(b);
			bos.close();
			fos.close();
		} 
		catch (Exception e) {
			e.printStackTrace();		}
		return (new File(path+filename));
		
	}
public static String getUser()
{
	User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String userName = user.getUsername();
	return userName;
}

public static String randomAlphaNumeric(int i) {
	// TODO Auto-generated method stub
	return null;
}



public static String generatePassword() {

	int n = 8;
	// chose a Character random from this String 
    String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                + "0123456789"
                                + "abcdefghijklmnopqrstuvxyz"; 

    // create StringBuffer size of AlphaNumericString 
    StringBuilder sb = new StringBuilder(n); 

    for (int i = 0; i < n; i++) { 

        // generate a random number between 
        // 0 to AlphaNumericString variable length 
        int index 
            = (int)(AlphaNumericString.length() 
                    * Math.random()); 

        // add Character one by one in end of sb 
        sb.append(AlphaNumericString 
                      .charAt(index)); 
    } 

    return sb.toString(); 
}

public static void sendMail(String receiver,String securityKey,String userName){

	final String from = "noreply.cropprediction@gmail.com";
	final String username = "";
	final String password = "Vishal@007";

	String host = "smtp.gmail.com";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.port", "587");
	props.put("mails.smtp.ssl.trust","smtp.gmail.com");

	Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(from, password);
		}
	});

	try {
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(receiver));
		message.setSubject("Approve ");
		
		
		/*
		 * int num = 0; String pass = ""; for (int i = 0; i < 4;
		 * i++) { num = (int) (Math.random() * 10); pass += num; }
		 * 
		 * System.out.println(pass);
		 * 
		 * s.setAttribute("password", pass);
		 */

		message.setText("Hello ,  " + userName + " your PassWord is " + securityKey 
				 );

		Transport.send(message);

		System.out.println("Sent message successfully....");

	} catch (Exception e) {

		e.printStackTrace();
	}

}
}
