package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.donation.dao.DonationDAO;
import com.milestone.app.donation.vo.DonationVO;
import com.milestone.app.individual.dao.IndividualDAO;

public class DonationMoneyOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		HttpSession session = req.getSession(); 
		DonationDAO donationDAO = new DonationDAO();
		IndividualDAO individualDAO = new IndividualDAO();
		DonationVO donationVO = new DonationVO();
		
		System.out.println("보육원 넘버"+req.getParameter("nurserySchoolMemberNumber"));
		int nurserySchoolMemberNumber = Integer.valueOf(req.getParameter("nurserySchoolMemberNumber"));
		int individualMemberNumber =(Integer)session.getAttribute("individualMemberNumber");
		int donationAmount = Integer.valueOf(req.getParameter("donationAmount"));
		
		donationVO.setNurserySchoolMemberNumber(nurserySchoolMemberNumber);
		donationVO.setIndividualMemberNumber(individualMemberNumber);
		donationVO.setDonationAmount(donationAmount);
		
		individualDAO.countDonation(individualMemberNumber);
		donationDAO.donationMoney(donationVO);
		
		result.setPath("/search/schoolDetailOk.school?nurserySchoolMemberNumber="+nurserySchoolMemberNumber);
		return result;
	}

}
