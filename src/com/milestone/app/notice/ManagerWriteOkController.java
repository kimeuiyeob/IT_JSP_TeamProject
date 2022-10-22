package com.milestone.app.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.notice.dao.NoticeDAO;
import com.milestone.app.notice.vo.NoticeVO;

public class ManagerWriteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NoticeDAO noticeDAO = new NoticeDAO();
		NoticeVO noticeVO = new NoticeVO();

		System.out.println("공지사항 추가 들어옴");

		String noticeContent = req.getParameter("noticeContent");
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeClassification = req.getParameter("noticeClassification");

		noticeVO.setNoticeClassification(noticeClassification);
		noticeVO.setNoticeContent(noticeContent);
		noticeVO.setNoticeTitle(noticeTitle);

		noticeDAO.noticeInsert(noticeVO);

		return null;
	}

}
