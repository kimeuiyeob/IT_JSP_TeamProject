package com.milestone.app.news;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.news.dao.NewsDAO;
import com.milestone.app.news.vo.NewsVO;

public class NewsListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();

		NewsVO newsVO = new NewsVO();
		NewsDAO newsDAO = new NewsDAO();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
 		
		req.setAttribute("news", newsDAO.selectNewsList());
		
		result.setPath("/app/news/news2.jsp");
		return result;
	}

}
