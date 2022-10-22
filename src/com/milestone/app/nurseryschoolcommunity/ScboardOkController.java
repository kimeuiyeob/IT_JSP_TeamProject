package com.milestone.app.nurseryschoolcommunity;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.milestone.app.Execute;
import com.milestone.app.Result;
import com.milestone.app.nurseryschoolcommunity.dao.NurserySchoolCommunityDAO;
import com.milestone.app.nurseryschoolcommunity.vo.NurserySchoolCommunityVO;

public class ScboardOkController implements Execute {

//   =====================게시물 리스트=====================
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("scboardOk컨트롤러");
      
      HashMap<String, Integer>pageMap = new HashMap<String, Integer>();   //페이지 맵
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      Result result = new Result();
      String temp = req.getParameter("page");                  //혹시라도 글이없을 경우 NPE가 뜨므로 현재상태를 담아주고 int page 연산후 저장
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int total = nurserySchoolCommunityDAO.selectCount();   //전체 게시글 수
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 4;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;

		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
      
      //"count"같은 것들은 목록뽑는 jsp에서 보여줄 key 값이 됨 (명명은 맘대로 하고 jsp에서 저걸로 불러주면 됨)
      req.setAttribute("boards", nurserySchoolCommunityDAO.selectAll(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);

      
      //req객체에 담아야하므로 forward방식 = redirect(false)
      result.setRedirect(false);
//      result.setPath(req.getContextPath() + "/app/board/schoolBoard.jsp");
      result.setPath("/app/board/schoolBoard.jsp");
      return result;
   }

}