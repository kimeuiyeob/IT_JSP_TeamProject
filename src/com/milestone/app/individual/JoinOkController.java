package com.milestone.app.individual;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;

public class JoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		IndividualVO individualVO = new IndividualVO();
		IndividualDAO individualDAO = new IndividualDAO();
		String individualMemberName = req.getParameter("individualMemberName");
		String nickName = req.getParameter("nickName");
		String individualMemberPhoneNumber = req.getParameter("individualMemberPhoneNumber");
		String individualMemberId = req.getParameter("individualMemberId");
		String zipCode = req.getParameter("zipCode");
		String individualMemberAddress = req.getParameter("individualMemberAddress");
		String individualMemberDetailedAddress = req.getParameter("individualMemberDetailedAddress");
		String individualMemberPassword = req.getParameter("individualMemberPassword");
		String individualMemberEmail = req.getParameter("individualMemberEmail");
		
		individualMemberPassword = new String(Base64.getEncoder().encode(individualMemberPassword.getBytes()));

		individualVO.setIndividualMemberName(individualMemberName);
		individualVO.setNickName(nickName);
		individualVO.setIndividualMemberPhoneNumber(individualMemberPhoneNumber);
		individualVO.setIndividualMemberId(individualMemberId);
		individualVO.setIndividualMemberPassword(individualMemberPassword);
		individualVO.setIndividualMemberEmail(individualMemberEmail);
		individualVO.setIndividualMemberAddress(individualMemberAddress);
		individualVO.setIndividualMemberDetailedAddress(individualMemberDetailedAddress);
		individualVO.setZipCode(zipCode);
		
		individualDAO.join(individualVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/member/index.me");

		return result;
	}

}
