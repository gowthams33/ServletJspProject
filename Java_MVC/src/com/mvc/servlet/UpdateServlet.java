package com.mvc.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.Util.DBUtil;
import com.mvc.bean.User;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		System.out.println("get..");
		String user_id = request.getParameter("id");
		Integer id = Integer.parseInt(user_id);
		User user_obj = new User(); 
		try {
			PreparedStatement ps = DBUtil.getConnection().prepareStatement("select * from Users where id = '"+id+"'");
		
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				user_obj.setId(rs.getInt(1));
				user_obj.setName(rs.getString(2));
				user_obj.setEmail(rs.getString(3));
				user_obj.setAddress(rs.getString(4));
				user_obj.setSex(rs.getString(8));
				user_obj.setCountry(rs.getString(10));
			}
			request.setAttribute("object", user_obj);
			RequestDispatcher rd = request.getRequestDispatcher("Update.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User updateObject = new User();
		updateObject.setId(new Integer(request.getParameter("id")));
		updateObject.setName(request.getParameter("name"));
		updateObject.setEmail(request.getParameter("email"));
		updateObject.setAddress(request.getParameter("address"));
		updateObject.setCountry(request.getParameter("country"));
		updateObject.setSex(request.getParameter("sex"));
		System.out.println(request.getParameter("country"));
		try {
			Statement stmt = DBUtil.getConnection().createStatement();
			String sql = "update Users set name='"+updateObject.getName()+"',email='"+updateObject.getEmail()+"',address='"+updateObject.getAddress()+"',sex= '"+updateObject.getSex().charAt(0)+"',country='"+updateObject.getCountry()+"'where id='"+updateObject.getId()+"'";
			int check = stmt.executeUpdate(sql);
			if(check == 1)
				System.out.println("Successfully updated.....");
			RequestDispatcher rd = request.getRequestDispatcher("/root");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
