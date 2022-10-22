package com.milestone.app.individual;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;

public class Login2Controller implements Execute {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		String individualMemberId = null, individualMemberPassword = null;
		
		System.out.println(req.getHeader("Cookie"));
		if(req.getHeader("Cookie") != null) {
			System.out.println("안녕하세요");
			for(Cookie cookie : req.getCookies()) {
//				쿠키에 저장된 사용자 아이디를 찾아서 
				if(cookie.getName().equals("individualMemberId")) {
//					그대로 memberId에 넣어준다.
					individualMemberId= cookie.getValue();
				}
//				쿠키에 저장된 암호화된 사용자 비밀번호를 찾아서
				if(cookie.getName().equals("individualMemberPassword")) {
//					복호화 후 비밀번호 원본을 memberPw에 담아준다.
//					원래 로그인에서는 전달받은 비밀번호를 무조건 암호화하기 때문에 복호화 해서 담아준다.
					individualMemberPassword = new String(Base64.getDecoder().decode(cookie.getValue().getBytes()));
				}
			}
		}
		
		if(Boolean.valueOf(req.getParameter("logout"))) {
			for(Cookie cookie : req.getCookies()) {
				if(cookie.getName().equals("individualMemberId") || cookie.getName().equals("individualMemberPassword")) {
					cookie.setMaxAge(0);
					resp.addCookie(cookie);
				}
			}
		}
		
//		req.setAttribute("individualMemberId", individualMemberId);
//		req.setAttribute("individualMemberPassword", individualMemberPassword);
		
		
		if(individualMemberId != null) {
			System.out.println("로그인 방가방가");
			result.setPath("/login/loginOk.indi?autoLogin=on");
		}else {
			System.out.println("로그인 가방가방");
			result.setPath("/app/login/login2in.jsp");
		}
		return result;
	}
}
