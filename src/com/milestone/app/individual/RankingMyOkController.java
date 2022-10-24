package com.milestone.app.individual;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualDTO;


public class RankingMyOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Result result = new Result();
		
		IndividualDTO individualDTO = new IndividualDTO();
		IndividualDAO individualDAO = new IndividualDAO();

		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		int individualMemberNumber = (Integer)req.getSession().getAttribute("individualMemberNumber");
		
		JSONObject myInfo = new JSONObject(individualDAO.selectByIndividualMemberNumber(individualMemberNumber));
		System.out.println("안녕");
		System.out.println(myInfo);
		out.print(myInfo.toString());
		out.close();
		
		return null;
		
	}
}
