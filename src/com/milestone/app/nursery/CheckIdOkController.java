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

public class CheckIdOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		
		NurseryDAO nurseryDAO = new NurseryDAO();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		String nurserySchoolMemberId = req.getParameter("nurserySchoolMemberId");
		
		try {
			jsonObject.put("result", nurseryDAO.checkId(nurserySchoolMemberId));
			out.print(jsonObject.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.close();
		
		System.out.println("잘왔다"+nurserySchoolMemberId);
		return null;
	}

}
