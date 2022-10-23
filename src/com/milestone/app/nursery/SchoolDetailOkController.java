package com.milestone.app.nursery;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.news.dao.NewsDAO;
import com.milestone.app.news.vo.NewsVO;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class SchoolDetailOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		System.out.println(req.getParameter("nurserySchoolMemberNumber"));
		
		int nurserySchoolMemberNumber = Integer.valueOf(req.getParameter("nurserySchoolMemberNumber"));
		req.setAttribute("nurseryVO", nurseryDAO.selectDetail(nurserySchoolMemberNumber));
		
		result.setPath("/app/donation/donation.jsp");
		
		return result;
	}

}


