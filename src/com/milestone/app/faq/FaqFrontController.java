package com.milestone.app.faq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;

public class FaqFrontController extends HttpServlet {
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

		// =========================FAQ자주묻는질문============================

		if (request.equals("/faq/faq.faq")) { //FAQ자주묻는 질문
			result = new Result();
			result.setPath("/app/faq/faq.jsp");
			
		} else if (request.equals("/faq/faqDetail.faq")) { //자주묻는질문 상세페이지
			result = new Result();
			result.setPath("/app/faq/faqDetail.jsp");
			
		} else if (request.equals("/faq/faqService.faq")) { //서비스 상세페이지
			result = new Result();
			result.setPath("/app/faq/faqService.jsp");
			
		} else if (request.equals("/faq/faqDonation.faq")) { //기부 상세페이지
			result = new Result();
			result.setPath("/app/faq/faqDonation.jsp");	
			
		} else if (request.equals("/faq/faqAccount.faq")) { //계좌 상세페이지
			result = new Result();
			result.setPath("/app/faq/faqAccount.jsp");	
		}	
			
		// =================================================================

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
