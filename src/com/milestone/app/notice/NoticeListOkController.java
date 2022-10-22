package com.milestone.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.notice.dao.NoticeDAO;
import com.milestone.app.notice.vo.NoticeVO;

public class NoticeListOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Result result = new Result();

		NoticeVO noticeVO = new NoticeVO();
		NoticeDAO noticeDAO = new NoticeDAO();
		

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
 		
		req.setAttribute("notice", noticeDAO.selectNotice());
		
		result.setPath("/app/notice/notice.jsp");
		return result;
	}

}
