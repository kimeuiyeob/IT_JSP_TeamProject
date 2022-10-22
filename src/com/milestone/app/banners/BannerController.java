package com.milestone.app.banners;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.banners.dao.BannersDAO;
import com.milestone.app.banners.vo.BannersVO;

public class BannerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();

		BannersVO bannersVO = new BannersVO();
		BannersDAO bannersDAO = new BannersDAO();

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
 		
		req.setAttribute("banners", bannersDAO.bannerList());
		
		result.setPath("/app/manager/milestoneManagerBanner.jsp");
		return result;
	}

}
