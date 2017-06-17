package com.mvc.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.DAO.FunctionalDAO;
import com.mvc.Util.DBUtil;
import com.mvc.bean.User;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Statement stmt = null;
			ResultSet rs = null;
			
			String[] str = request.getParameterValues("framework");
			List<String> list = new ArrayList<String>();
			for (int i = 0; i < str.length; i++) {
				list.add(str[i]);
			}
			
			String[] skill = request.getParameterValues("skill");
			List<String> skilllist = new ArrayList<String>();
			for (int i = 0; i < skill.length; i++) {
				skilllist.add(skill[i]);
			}
			
			Integer id = new Integer(0);
			stmt = DBUtil.getConnection().createStatement();
			rs = stmt.executeQuery("select user_id.nextval from dual");
			if(rs.next())
				id = rs.getInt(1);
			
			User user = new User();
			user.setAddress(request.getParameter("address"));
			user.setConfirmPassword(request.getParameter("confirmpassword"));
			user.setCountry(request.getParameter("Country"));
			System.out.println(request.getParameter("Country"));
			user.setEmail(request.getParameter("email"));
			user.setFramework(list);
			user.setId(id);
			user.setName(request.getParameter("name"));
			user.setNewsletter(request.getParameter("newsletter"));
			user.setNumber(Integer.valueOf(request.getParameter("numbers")));
			user.setPassword(request.getParameter("password"));
			user.setSex(request.getParameter("sex"));
			user.setSkill(skilllist);
			List<User> obj = new ArrayList<>();
			obj.add(user);
			FunctionalDAO.insertion(user);
				
			request.setAttribute("users", user);
			request.setAttribute("frame", obj);
			user = null;
			list = null;
			skilllist = null;
			RequestDispatcher rd = request.getRequestDispatcher("/Show.jsp");
			rd.forward(request, response);
			
			try {
				if(stmt != null)
					stmt.close();
				if(rs != null)
					rs.close();
				if(DBUtil.getConnection() != null)
					DBUtil.getConnection().close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
