package com.milestone.app.nursery;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nursery.dao.NurseryDAO;
import com.milestone.app.nursery.vo.NurseryVO;

public class JoinOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		NurseryDAO nerseryDAD = new NurseryDAO();
		NurseryVO nurseryVO = new NurseryVO();

		String nurserySchoolMemberName = req.getParameter("nurserySchoolMemberName");
		String nurserySchoolMemberPhoneNumber = req.getParameter("nurserySchoolMemberPhoneNumber");
		String nurserySchoolMemberId = req.getParameter("nurserySchoolMemberId");
		String zipCode = req.getParameter("zipCode");
		String nurserySchoolAddress = req.getParameter("nurserySchoolAddress");
		String nurserySchoolDetailedAddress = req.getParameter("nurserySchoolDetailedAddress");
		String nurserySchoolMemberPassword = req.getParameter("nurserySchoolMemberPassword");
		String nurserySchoolMemberEmail = req.getParameter("nurserySchoolMemberEmail");

		nurserySchoolMemberPassword = new String(Base64.getEncoder().encode(nurserySchoolMemberPassword.getBytes()));

		nurseryVO.setNurserySchoolMemberName(nurserySchoolMemberName);
		nurseryVO.setNurserySchoolMemberPhoneNumber(nurserySchoolMemberPhoneNumber);
		nurseryVO.setNurserySchoolMemberId(nurserySchoolMemberId);
		nurseryVO.setZipCode(zipCode);
		nurseryVO.setNurserySchoolAddress(nurserySchoolAddress);
		nurseryVO.setNurserySchoolDetailedAddress(nurserySchoolDetailedAddress);
		nurseryVO.setNurserySchoolMemberPassword(nurserySchoolMemberPassword);
		nurseryVO.setNurserySchoolMemberEmail(nurserySchoolMemberEmail);
		
		nerseryDAD.join(nurseryVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/member/index.me");

		return result;
	}

}
