package com.milestone.app.donation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.donation.dao.DonationDAO;
import com.milestone.app.donation.vo.DonationVO;
import com.mysql.cj.Session;

public class DonationProductOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();
		HttpSession session = req.getSession(); 
		DonationDAO donationDAO = new DonationDAO();
		DonationVO donationVO = new DonationVO();
		
		int nurserySchoolMemberNumber = Integer.valueOf(req.getParameter("nurserySchoolMemberNumber"));
		int individualMemberNumber =(Integer)session.getAttribute("individualMemberNumber");
		String donationDate = req.getParameter("donationDate");
		String donationProducts = req.getParameter("donationProducts");
		String donationDetailProducts = req.getParameter("donationDetailProducts");
		System.out.println("수량 : "+req.getParameter("quantity"));
		System.out.println("박스 수량 : "+req.getParameter("boxQuantity"));
		
		String quantity = req.getParameter("quantity");
		String boxQuantity = req.getParameter("boxQuantity");
		
		System.out.println(nurserySchoolMemberNumber);
		System.out.println(individualMemberNumber);
		System.out.println(donationDate);
		System.out.println(donationProducts);
		System.out.println(donationDetailProducts);
		System.out.println(quantity);
		System.out.println(boxQuantity);
		
		donationVO.setNurserySchoolMemberNumber(nurserySchoolMemberNumber);
		donationVO.setIndividualMemberNumber(individualMemberNumber);
		donationVO.setDonationDate(donationDate);
		donationVO.setDonationProducts(donationProducts);
		donationVO.setDonationDetailProducts(donationDetailProducts);
		donationVO.setQuantity(quantity.length()==0? -1: Integer.valueOf(quantity));
		donationVO.setBoxQuantity(boxQuantity.length()==0? -1: Integer.valueOf(boxQuantity));
		
		donationDAO.donationProduct(donationVO);
		
		result.setPath("/search/schoolDetailOk.school");
		
		return result;
	}

}
