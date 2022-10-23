package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class DonationMoneyController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		IndividualVO individualVO = new IndividualVO();
		IndividualDAO individualDAO = new IndividualDAO();
		NurseryVO nurseryVO = new NurseryVO();
		NurseryDAO nurseryDAO = new NurseryDAO();
		HttpSession session = req.getSession();

		int nurserySchoolMemberNumber = Integer.valueOf("" + req.getParameter("nurserySchoolMemberNumber"));
		int individualMemberNumber = Integer.valueOf("" + session.getAttribute("individualMemberNumber"));
		System.out.println(individualMemberNumber);
		req.setAttribute("individualVO", individualDAO.userOneInfo(individualMemberNumber));
		req.setAttribute("nurserySchoolMemberNumber", nurserySchoolMemberNumber);

		req.setAttribute("nurseryVO", nurseryDAO.selectDetail(nurserySchoolMemberNumber));

		result.setPath("/app/donation/donationMoney.jsp");
		return result;
	}

}
