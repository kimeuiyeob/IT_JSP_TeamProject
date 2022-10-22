package com.milestone.app.individual;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;

public class FindIdOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		Result result = new Result();

		String individualMemberName = req.getParameter("individualMemberName");
		String individualMemberPhoneNumber = req.getParameter("individualMemberPhoneNumber");

		IndividualDAO individualDAO = new IndividualDAO();
		IndividualVO individualVO = new IndividualVO();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();

		individualVO.setIndividualMemberName(individualMemberName);
		individualVO.setIndividualMemberPhoneNumber(individualMemberPhoneNumber);

		try {
			String individualMemberId = individualDAO.findId(individualVO);
			jsonObject.put("result", individualMemberId);
			out.print(jsonObject);
			out.close();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return null;
	}

}
