package com.milestone.app.nursery;

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
		String nurserySchoolMemberId = null, nurserySchoolMemberPassword = null;
		
		System.out.println(req.getHeader("Cookie"));
		if(req.getHeader("Cookie") != null) {
			System.out.println("안녕하세요");
			for(Cookie cookie : req.getCookies()) {
//				쿠키에 저장된 사용자 아이디를 찾아서 
				if(cookie.getName().equals("nurserySchoolMemberId")) {
//					그대로 memberId에 넣어준다.
					nurserySchoolMemberId= cookie.getValue();
				}
//				쿠키에 저장된 암호화된 사용자 비밀번호를 찾아서
				if(cookie.getName().equals("nurserySchoolMemberPassword")) {
//					복호화 후 비밀번호 원본을 memberPw에 담아준다.
//					원래 로그인에서는 전달받은 비밀번호를 무조건 암호화하기 때문에 복호화 해서 담아준다.
					nurserySchoolMemberPassword = new String(Base64.getDecoder().decode(cookie.getValue().getBytes()));
				}
			}
		}
		
		req.setAttribute("nurserySchoolMemberId", nurserySchoolMemberId);
		req.setAttribute("nurserySchoolMemberPassword", nurserySchoolMemberPassword);
		
		
		if(nurserySchoolMemberId != null) {
			System.out.println("로그인 방가방가");
			result.setPath("/login/loginOk.school?autoLogin=on");
		}else {
			System.out.println("로그인 가방가방");
			result.setPath("/app/login/login2ch.jsp");
		}
		return result;
	}
}
