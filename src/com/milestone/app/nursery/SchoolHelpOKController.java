package com.milestone.app.nursery;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class SchoolHelpOKController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();

		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		
		System.out.println("보육원 헬프 들어옴!");
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.setAttribute("nurserySchoolMember", nurseryDAO.helpSchoolSelect());
		System.out.println(nurseryDAO.helpSchoolSelect());
		
		result.setPath("/app/school/helpSchool.jsp");
		return result;

	}
}
