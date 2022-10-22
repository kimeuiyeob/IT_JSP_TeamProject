package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.donation.dao.DonationDAO;
import com.milestone.app.donation.vo.DonationDTO;

public class DonationstatusOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Result result = new Result();

		DonationDTO donationDTO = new DonationDTO();
		DonationDAO donationDAO = new DonationDAO();

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
 		
		req.setAttribute("donation", donationDAO.selectDonationStatus());
		
		result.setPath("/app/donation/donationStatus.jsp");
		return result;

	}
}