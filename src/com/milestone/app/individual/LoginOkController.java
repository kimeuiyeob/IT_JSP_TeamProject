package com.milestone.app.individual;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;

public class LoginOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IndividualDAO individualDAO = new IndividualDAO();
		IndividualVO individualVO = new IndividualVO();
		Result result = new Result();
		HttpSession session = req.getSession();
		int individualMemberNumber = 0;

		String individualMemberId = req.getParameter("individualMemberId");
		String individualMemberPassword = req.getParameter("individualMemberPassword");
		String autoLogin = req.getParameter("autoLogin")+"";
		
		System.out.println("누구세요indi?"+req.getHeader("Cookie"));
		System.out.println(autoLogin);
		
		if(autoLogin.equals("on")) {
			System.out.println("1차 들옴");
			if(req.getHeader("Cookie") != null) {
				System.out.println("안녕하세요");
				for(Cookie cookie : req.getCookies()) {
//					쿠키에 저장된 사용자 아이디를 찾아서 
					if(cookie.getName().equals("individualMemberId")) {
//						그대로 memberId에 넣어준다.
						individualMemberId= cookie.getValue();
					}
//					쿠키에 저장된 암호화된 사용자 비밀번호를 찾아서
					if(cookie.getName().equals("individualMemberPassword")) {
//						복호화 후 비밀번호 원본을 memberPw에 담아준다.
//						원래 로그인에서는 전달받은 비밀번호를 무조건 암호화하기 때문에 복호화 해서 담아준다.
						individualMemberPassword = new String(Base64.getDecoder().decode(cookie.getValue().getBytes()));
					}
				}
			}
		}
		
		individualMemberPassword = new String(Base64.getEncoder().encode(individualMemberPassword.getBytes()));
		
		System.out.println(individualMemberPassword);

		individualVO.setIndividualMemberId(individualMemberId);
		individualVO.setIndividualMemberPassword(individualMemberPassword);

		try {
			individualMemberNumber = individualDAO.login(individualVO);
			session.setAttribute("individualMemberId", individualMemberId);
			session.setAttribute("individualMemberNumber", individualMemberNumber);
			
			if(autoLogin.equals("on")) {
//				사용자가 입력한 아이디와 비밀번호를 쿠키로 생성한다.
				Cookie cookieindividualMemberId = new Cookie("individualMemberId", individualMemberId);
				Cookie cookieindividualMemberPassword = new Cookie("individualMemberPassword", individualMemberPassword);
				
				cookieindividualMemberId.setMaxAge(60*60*24*365);
				cookieindividualMemberPassword.setMaxAge(60*60*24*365);
				
				resp.addCookie(cookieindividualMemberId);
				resp.addCookie(cookieindividualMemberPassword);
			}
			
			result.setRedirect(true);
			result.setPath(req.getContextPath() + "/member/index.me");
		} catch (Exception e) {
			System.out.println("널이 떠 브렀으");
			result.setRedirect(false);
			result.setPath("/login/login2.indi?login=false");
		}

		return result;
	}
}
