/*
 * package com.milestone.app.nursery;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.milestone.app.Execute; import com.milestone.app.Result; import
 * com.milestone.app.nursery.dao.NurseryDAO;
 * 
 * public class SchoolUserListController implements Execute {
 * 
 * @Override public Result execute(HttpServletRequest req, HttpServletResponse
 * resp) throws ServletException, IOException {
 * System.out.println("보육원 회원 컨트롤러 들어옴");
 * 
 * Result result = new Result();
 * 
 * // IndividualDAO individualDAO = new IndividualDAO(); NurseryDAO nurseryDAO =
 * new NurseryDAO();
 * 
 * 
 * req.setCharacterEncoding("UTF-8"); resp.setCharacterEncoding("UTF-8");
 * 
 * req.setAttribute("nursery", nurseryDAO.managerSchoolList()); //
 * req.setAttribute("individual", individualDAO.managerIndilList());
 * 
 * System.out.println(nurseryDAO.managerSchoolList()); //
 * System.out.println(individualDAO.managerIndilList());
 * 
 * result.setPath("/app/manager/milestoneManagerUserlist.jsp"); return result; }
 * 
 * }
 */