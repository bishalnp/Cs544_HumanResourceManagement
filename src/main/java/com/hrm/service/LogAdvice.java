package com.hrm.service;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;


public class LogAdvice {
	@After("execution(* com.hrm.service.MailService.sendMail(..)) && args(from, to, subject, msg)")
	public void log(JoinPoint joinpoint, String from, String to, String subject, String msg) {
		System.out.println("Email has been sent on "+new Date()+" with below details ...");
		System.out.println("From Email : "+from);
		System.out.println("To Email : "+to);
		System.out.println("Subject : "+subject);
		System.out.println("Message : "+msg);	
	}
}
