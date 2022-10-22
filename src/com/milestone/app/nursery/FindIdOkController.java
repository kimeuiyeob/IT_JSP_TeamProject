package com.milestone.app.nursery;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class FindIdOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		Result result = new Result();

		String nurserySchoolMemberEmail = req.getParameter("nurserySchoolMemberEmail");
		String nurserySchoolMemberPhoneNumber = req.getParameter("nurserySchoolMemberPhoneNumber");

		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();

		nurseryVO.setNurserySchoolMemberEmail(nurserySchoolMemberEmail);
		nurseryVO.setNurserySchoolMemberPhoneNumber(nurserySchoolMemberPhoneNumber);

		try {
			String nurserySchoolMemberId = nurseryDAO.findId(nurseryVO);
			jsonObject.put("result", nurserySchoolMemberId);
			out.print(jsonObject);
			out.close();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return null;
	}

}
