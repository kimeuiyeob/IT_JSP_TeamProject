package com.milestone.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.member.dao.MemberDAO;

public class IndexController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		HttpSession session = req.getSession();
		boolean logout = Boolean.valueOf(req.getParameter("logout"));
		if (logout) {
			session.invalidate();
		}
		
		DonationDTO donationDTO = new DonationDTO();
		MemberDAO memberDAO = new MemberDAO();

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
 		
		req.setAttribute("donation", memberDAO.selectMainAll());
		
		result.setPath("/app/main/main.jsp");
		return result;
	}

}
