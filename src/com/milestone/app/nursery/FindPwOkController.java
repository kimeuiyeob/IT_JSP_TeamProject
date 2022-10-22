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
import com.milestone.app.individual.dao.IndividualDAO;
import com.milestone.app.individual.vo.IndividualVO;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class FindPwOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		Result result = new Result();
		System.out.println("컨트롤 도착");
		
		String nurserySchoolMemberId = req.getParameter("nurserySchoolMemberId");
		String nurserySchoolMemberPhoneNumber = req.getParameter("nurserySchoolMemberPhoneNumber");

		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();

		nurseryVO.setNurserySchoolMemberId(nurserySchoolMemberId);
		nurseryVO.setNurserySchoolMemberPhoneNumber(nurserySchoolMemberPhoneNumber);

		System.out.println(nurserySchoolMemberId);
		System.out.println(nurserySchoolMemberPhoneNumber);
		
		try {
			System.out.println("머지!");
			System.out.println("머지!"+nurseryDAO.findPw(nurseryVO));
			System.out.println("머지!");
			jsonObject.put("result", nurseryDAO.findPw(nurseryVO));
//			out.print(jsonObject);
//			out.close();
		} catch (JSONException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				jsonObject.put("result", false);
//				out.print(jsonObject);
//				out.close();
			} catch (JSONException e1) {
				e1.printStackTrace();
			}
		}
		out.print(jsonObject);
		out.close();

		return null;
	}

}
