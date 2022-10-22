package com.milestone.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.member.dao.MemberDAO;

public class BannerOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Result result = new Result();

		MemberDAO memberDAO = new MemberDAO();
		JSONArray banners = new JSONArray();
		System.out.println("안녕");

		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();

		memberDAO.selectBanner().stream().map(bannersVO -> new JSONObject(bannersVO)).forEach(banner -> banners.put(banner));
		System.out.println(banners);
		
		out.print(banners.toString());
		out.close();

		return null;

	}
}
