package com.milestone.app.nursery;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class UpdatePwOkControlller implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		int nurserySchoolMemberNumber = Integer.valueOf(req.getParameter("nurserySchoolMemberNumber"));
		String nurserySchoolMemberPassword = req.getParameter("nurserySchoolMemberPassword");
		
		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		
		nurserySchoolMemberPassword = new String(Base64.getEncoder().encode(nurserySchoolMemberPassword.getBytes()));
		
		nurseryVO.setNurserySchoolMemberNumber(nurserySchoolMemberNumber);
		nurseryVO.setNurserySchoolMemberPassword(nurserySchoolMemberPassword);
		
		nurseryDAO.updatePw(nurseryVO);
		
		result.setPath("/login/login2.school");
		return result;
	}

}
