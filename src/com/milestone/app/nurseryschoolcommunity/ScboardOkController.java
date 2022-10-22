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
//   1. 원래 있던 selectAll에서 "order by board_number desc limit #{startRow}, #{rowCount}"를 추가하여 게시글을 10개씩 가져온다
//   2. parameterType은 map이다.
//      map을 쓰는 이유 :   put(k,v)
//                           put(start, value)
//                           put(row, value)
   
   
   
   
   
//   =====================게시물 리스트=====================
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      System.out.println("scboardOk컨트롤러");
      
      HashMap<String, Integer>pageMap = new HashMap<String, Integer>();   //페이지 맵
      Result result = new Result();
      NurserySchoolCommunityDAO nurserySchoolCommunityDAO = new NurserySchoolCommunityDAO();
      
      String temp = req.getParameter("page");                  //혹시라도 글이없을 경우 NPE가 뜨므로 현재상태를 담아주고 int page 연산후 저장
      int total = nurserySchoolCommunityDAO.selectCount();   //전체 게시글 수
      int page = temp ==null? 1: Integer.parseInt(temp);   //사용자에게 현재 페이지를 받아와야 페이징 처리가능
      int rowCount = 4;                                             // 게시글을 몇개 씩 가져오는가 
      int pageCount = 5;                                                // 한페이지에 나오는 페이지개수 (1~10)
      int startRow = (page-1) * rowCount;
      
      int endPage = (int)(Math.ceil(page/(double)pageCount)*(pageCount));
      int startPage = endPage - (pageCount-1);
      int realEndPage = (int)Math.ceil(total/(double)pageCount);
      
      boolean prev = startPage>1;
      endPage = endPage> realEndPage? realEndPage : endPage; 
      boolean next = endPage != realEndPage;
      
      pageMap.put("startRow", startRow);
      pageMap.put("rowCount", rowCount);
      
      //"count"같은 것들은 목록뽑는 jsp에서 보여줄 key 값이 됨 (명명은 맘대로 하고 jsp에서 저걸로 불러주면 됨)
      req.setAttribute("boards", nurserySchoolCommunityDAO.selectAll(pageMap));
      req.setAttribute("page", page);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);      //realEndpage는 어차피 endPage에 담겨있음
         req.setAttribute("prev", prev);
         req.setAttribute("next", next);

      
      //req객체에 담아야하므로 forward방식 = redirect(false)
      result.setRedirect(false);
//      result.setPath(req.getContextPath() + "/app/board/schoolBoard.jsp");
      result.setPath("/app/board/schoolBoard.jsp");
      return result;
   }

}