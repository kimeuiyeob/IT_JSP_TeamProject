package com.milestone.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.notice.dao.NoticeDAO;
import com.milestone.app.notice.vo.NoticeVO;

public class ManagerDeleteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NoticeDAO noticeDAO = new NoticeDAO();
		NoticeVO noticeVO = new NoticeVO();
		Result result = new Result();
		int noticeNumber = Integer.valueOf(req.getParameter("noticeNumber"));
		
		noticeDAO.noticeDelete(noticeNumber);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/management/managerNoticeListOk.notice");
		return result;
	}

}
