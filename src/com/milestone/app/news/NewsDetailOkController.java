package com.milestone.app.news;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.news.dao.NewsDAO;
import com.milestone.app.news.vo.NewsVO;

public class NewsDetailOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Result result = new Result();
		NewsDAO newsDAO = new NewsDAO();
		NewsVO newsVO = new NewsVO();

		int newsNumber = Integer.valueOf(req.getParameter("newsNumber"));

		req.setAttribute("news", newsDAO.select(newsNumber));
		
		
		result.setPath("/app/news/news3.jsp");
		return result;
	}

}
