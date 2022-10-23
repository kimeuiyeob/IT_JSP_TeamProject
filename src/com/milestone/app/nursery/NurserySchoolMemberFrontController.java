package com.milestone.app.nursery;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;
import com.milestone.app.banners.DeleteOkController;
import com.milestone.app.individual.UpdatePwOkControlller;
import com.milestone.app.member.UserListController;
import com.milestone.app.notice.FilterOkController;

public class NurserySchoolMemberFrontController extends HttpServlet {

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

		if (request.equals("/login/login2.school")) { // 로그인 화면 이동
			result = new Login2Controller().execute(req, resp);
		} else if (request.equals("/login/loginOk.school")) { // 로그인 검사
			result = new LoginOkController().execute(req, resp);
		} else if (request.equals("/login/checkIdOk.school")) { // 아이디 중복 검사
			new CheckIdOkController().execute(req, resp);
		} else if (request.equals("/login/checkPhoneNumberOk.school")) { // 전화번호 중복 검사
			new CheckPhoneNumberOkController().execute(req, resp);
		} else if (request.equals("/login/join.school")) { // 회원가입 화면 이동
			result = new Result();
			result.setPath("/app/join/signupSc.jsp");
		} else if (request.equals("/login/joinOk.school")) { // 회원가입 정보 디비 저장
			result = new JoinOkController().execute(req, resp);
		} else if (request.equals("/find/findId.school")) { // 아이디 찾기 화면 이동
			result = new Result();
			result.setPath("/app/find/findidsc.jsp");
		} else if (request.equals("/find/findIdOk.school")) { // 아이디 찾기 ,번호로 검사
			result = new FindIdOkController().execute(req, resp);
		} else if (request.equals("/find/findIdResult.school")) { // 아이디 찾기 결과 화면 이동
			result = new Result();
			result.setPath("/app/find/findidresultch.jsp");
		} else if (request.equals("/find/findPw.school")) { // 비밀번호 찾기 화면 이동
			result = new Result();
			result.setPath("/app/find/findpwch.jsp");
		} else if (request.equals("/find/findPwOk.school")) { // 비밀번호 찾기 , 아이디와 성명으로 검사
			result = new FindPwOkController().execute(req, resp);
		} else if (request.equals("/find/findPwResult.school")) { // 비밀번호 찾기 결과 화면 이동
			result = new Result();
			result.setPath("/app/find/findpwresultch.jsp");
		} else if (request.equals("/find/updatePw.school")) {
			result = new UpdatePwOkControlller().execute(req, resp);
		}

		// ==============================보육원마이페이지===============================

//		else if (request.equals("/mypage/scmodifych.school")) { // 개인정보 비밀번호 쓰기 화면 이동
//			result = new Result();
//			result.setPath("/app/mypage/scmodifych.jsp");
//		} else if (request.equals("/mypage/checkPwOk.school")) { // 개인정보 수정 비밀번호 검사
//			result = new CheckPwOkController().execute(req, resp);
//		} else if (request.equals("/mypage/scmodifyOk.school")) { // 개인정보 수정 디비 조회
//			result = new IndimodifyOkOkController().execute(req, resp);
//		} else if (request.equals("/mypage/upDateOk.school")) { // 개인정보 수정 완료
//			result = new UpDateOkController().execute(req, resp);
//		} else if (request.equals("/mypage/scdhOk.school")) { // 기부내역 디비 조회
//			result = new IndidhOkController().execute(req, resp);
//		} else if (request.equals("/mypage/sccalendarOk.school")) { // 활동일정 디비 조회
//			result = new IndicalendarOkController().execute(req, resp);
//		} else if (request.equals("/mypage/scmodify2Ok.school")) { // 보육원프로필 디비 수정
//			result = new Scmodify2OkController().execute(req, resp);
//		} 
		else if (request.equals("/mypage/scModifyCh.school")) { // 보육원프로필 디비 수정
			result = new ScmodifychController().execute(req, resp);

			// ==============================보육원검색===============================
		} else if (request.equals("/search/schoolSearchOk.school")) { // 보육원 검색 디비 조회
			result = new SchoolSearchOkController().execute(req, resp);
		} else if (request.equals("/search/schoolDetailOk.school")) { // 보육원 상세페이지 (기부,물품) 디비 조회
			result = new SchoolDetailOkController().execute(req, resp);
		}

		// ==============================도움이필요한보육원==========================

		else if (request.equals("/donation/schoolHelpOK.school")) { //
			result = new SchoolHelpOKController().execute(req, resp);
		}
		// ===================================================================

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