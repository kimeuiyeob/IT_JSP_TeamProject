package com.milestone.app.individual;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;

public class IndividualMemberFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String request = requestURI.substring(contextPath.length());
		Result result = null;

		// ======================로그인,회원가입,아이디찾기,비밀번호찾기=========================

		if (request.equals("/login/login2.indi")) { // 로그인 화면 이동
			System.out.println("로그인 프론트");
			result = new Login2Controller().execute(req, resp);
		} else if (request.equals("/login/loginOk.indi")) { // 로그인 검사
			result = new LoginOkController().execute(req, resp);
		} else if (request.equals("/login/checkIdOk.indi")) { // 아이디 중복 검사
			new CheckIdOkController().execute(req, resp);
		} else if (request.equals("/login/checkNickNameOk.indi")) { // 닉네임 중복 검사
			new CheckNickNameOkController().execute(req, resp);
		} else if (request.equals("/login/checkPhoneNumberOk.indi")) { // 핸드폰 중복 검사
			new CheckPhoneNumberOkController().execute(req, resp);
		} else if (request.equals("/login/join.indi")) { // 회원가입 화면 이동
			result = new Result();
			result.setPath("/app/join/signupIn.jsp");
		} else if (request.equals("/login/joinOk.indi")) { // 회원가입 정보 디비 저장
			result = new JoinOkController().execute(req, resp);
		} else if (request.equals("/find/findId.indi")) { // 아이디 찾기 화면 이동
			result = new Result();
			result.setPath("/app/find/findidin.jsp");
		} else if (request.equals("/find/findIdOk.indi")) { // 아이디 찾기 ,번호로 검사
			result = new FindIdOkController().execute(req, resp);
		} else if (request.equals("/find/findIdResult.indi")) { // 아이디 찾기 결과 화면 이동
			result = new Result();
			result.setPath("/app/find/findidresultin.jsp");
		} else if (request.equals("/find/findPw.indi")) { // 비밀번호 찾기 화면 이동
			result = new Result();
			result.setPath("/app/find/findpwin.jsp");
		} else if (request.equals("/find/findPwOk.indi")) { // 비밀번호 찾기 , 아이디와 성명으로 검사
			result = new FindPwOkController().execute(req, resp);
		} else if (request.equals("/find/findPwResult.indi")) { // 비밀번호 찾기 결과 화면 이동
			result = new Result();
			result.setPath("/app/find/findpwresultin.jsp");
		} else if (request.equals("/find/updatePw.indi")) {
			result = new UpdatePwOkControlller().execute(req, resp);
			
			// ==============================개인마이페이지===============================

		} else if (request.equals("/mypage/indimodifych.indi")) { // 개인정보 비밀번호 쓰기 화면 이동
			result = new Result();
			result.setPath("/app/mypage/indimodifych.jsp");
		} else if (request.equals("/mypage/checkPwOk.indi")) { // 개인정보 수정 비밀번호 검사
			result = new CheckPwOkController().execute(req, resp);
		} else if (request.equals("/mypage/indimodifyOk.indi")) { // 개인정보 수정 디비 조회
			result = new IndimodifyOkOkController().execute(req, resp);
		} else if (request.equals("/mypage/upDateOk.indi")) { // 개인정보 수정 완료
			result = new UpDateOkController().execute(req, resp);
		} else if (request.equals("/mypage/indidhOk.indi")) { // 기부내역 디비 조회
			result = new IndidhOkController().execute(req, resp);
		} else if (request.equals("/mypage/indicalendarOk.indi")) { // 활동일정 디비 수정
			result = new IndicalendarOkController().execute(req, resp);
		}

		// ==============================기부 랭킹=======================

		else if (request.equals("/donation/rankingOk.indi")) { // 기부랭킹 디비 조회
			result = new RankingOkController().execute(req, resp);
		}
		else if (request.equals("/donation/rankingMyOk.indi")) { // 기부랭킹 디비 조회
			result = new RankingMyOkController().execute(req, resp);
		}

		// ============================================================

		if (result != null) { // 일괄처리!!!
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPath());
				dispatcher.forward(req, resp);
			}
		}

	}
}
