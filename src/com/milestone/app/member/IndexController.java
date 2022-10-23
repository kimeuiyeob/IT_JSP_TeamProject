package com.milestone.app.member;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.banners.dao.BannersDAO;
import com.milestone.app.banners.vo.BannersVO;
import com.milestone.app.donation.vo.DonationDTO;
import com.milestone.app.member.dao.MemberDAO;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;



public class IndexController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		HttpSession session = req.getSession();
		boolean logout = Boolean.valueOf(req.getParameter("logout"));
		if (logout) {
			session.invalidate();
		}
		
		DonationDTO donationDTO = new DonationDTO();
		MemberDAO memberDAO = new MemberDAO();
		NurseryDAO nurseryDAO = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();
		BannersVO bannersVO = new BannersVO();
		BannersDAO bannersDAO = new BannersDAO();

		System.out.println("안녕의엽아");
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
 		
		req.setAttribute("member", memberDAO.selectMainAll()); //메인페이지 기부현황 목록
		req.setAttribute("nurserySM", memberDAO.helpSchoolSelect2()); //메인페이지 도움이 필요한 보육원 목록
		req.setAttribute("banners", bannersDAO.bannersList()); //메인페이지 메인슬라이드 목록
		req.setAttribute("schoolSearch", nurseryDAO.mainSchoolSearch()); //메인페이지 보육원 목록 
		
		System.out.println(nurseryDAO.mainSchoolSearch());
		
		
		result.setPath("/app/main/main.jsp");
		return result;
	}

}
