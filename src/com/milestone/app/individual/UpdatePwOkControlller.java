package com.milestone.app.individual;

import java.io.IOException;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;

public class UpdatePwOkControlller extends Result implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		int individualMemberNumber = Integer.valueOf(req.getParameter("individualMemberNumber"));
		String individualMemberPassword = req.getParameter("individualMemberPassword");
		
		IndividualDAO individualDAO = new IndividualDAO();
		IndividualVO individualVO = new IndividualVO();
		
		individualMemberPassword = new String(Base64.getEncoder().encode(individualMemberPassword.getBytes()));
		
		individualVO.setIndividualMemberNumber(individualMemberNumber);
		individualVO.setIndividualMemberPassword(individualMemberPassword);
		
		individualDAO.updatePw(individualVO);
		
		result.setPath("/login/login2.indi");
		return result;
	}

}
