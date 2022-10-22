package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;

public class DonationProductController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		String nurserySchoolMemberNumber = req.getParameter("nurserySchoolMemberNumber");
		
		req.setAttribute("nurserySchoolMemberNumber", nurserySchoolMemberNumber);
		
		result.setPath("/app/donation/donationProduct.jsp");
		return result;
	}

}
