package com.milestone.app.notice;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.notice.dao.NoticeDAO;

public class ManagerNoticeListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("공지사항 컨트롤러 들어옴");

		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		NoticeDAO noticeDAO = new NoticeDAO();
		Result result = new Result();
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = noticeDAO.noticeSelectCount();
//			한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
//			한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int) Math.ceil(total / (double) pageCount);

		boolean prev = startPage > 1;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;

		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);

		req.setAttribute("notices", noticeDAO.selectNoticeManager(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);

		System.out.println(noticeDAO.selectNoticeManager(pageMap));

		result.setPath("/app/manager/milestoneManagerNoticeManagement.jsp");

		return result;
	}

}
