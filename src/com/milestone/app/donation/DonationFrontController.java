package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Result;

public class DonationFrontController extends HttpServlet {

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

		// =============================기부하기==============================

		if (request.equals("/donation/donationMoney.don")) { // 금액기부하기
			result = new DonationMoneyController().execute(req, resp);
		} else if (request.equals("/donation/donationMoneyOk.don")) { // 금액기부하기 디비 삽입
			result = new DonationMoneyOkController().execute(req, resp);
		} else if (request.equals("/donation/donationProduct.don")) { // 물품기부하기
			result = new DonationProductController().execute(req, resp);
		} else if (request.equals("/donation/donationProductOk.don")) { // 물품기부하기 디비 사입
			result = new DonationProductOkController().execute(req, resp);

			// =============================기부현황=============================

		} else if (request.equals("/donation/donationstatusOk.don")) { // 기부현황 페이지 디비조회
			result = new DonationstatusOkController().execute(req, resp);
		}

		// =============================기부일정관리달력=============================

		else if (request.equals("/donation/donateSchedule.don")) {
			result = new DonateScheduleController().execute(req, resp);
		}

		// =============================기부내역관리=============================

			
		 else if (request.equals("/management/managerDonateHistory.don")) { result =
		 new ManagerDonateHistoryController().execute(req, resp); }
		 
		
		// ==================================================================

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
