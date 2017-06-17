package com.mvc.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;



import com.mvc.Util.DBUtil;
import com.mvc.bean.User;



public class FunctionalDAO {

	public static void insertion(User user) throws SQLException, Exception{
		
		
		List<String> framework = user.getFramework();
		String frame = "";
		for (String string : framework) {
			frame += string+","; 
		}
		List<String> skills = user.getSkill();
		String skill = "";
		for (String string : skills) {
			skill += string+",";
		}
		
		
		String sql = "insert into Users(id,name,email,address,password,country,sex,number_count,framework,skill) values ('"+user.getId()+"','"+user.getName()+"','"+user.getEmail()+"','"+user.getAddress()+"','"+user.getPassword()+"','"+user.getCountry()+"','"+user.getSex().charAt(0)+"','"+user.getNumber()+"','"+frame+"','"+skill+"')" ;
		int i = DBUtil.getConnection().createStatement().executeUpdate(sql);
		if(i == 1)
			System.out.println("Successfully inserted...");
		
	}
	
	public static List<User> ViewTable()  {
		List<User> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet set = null;
		try {
			String sql = "select * from Users";
			stmt = DBUtil.getConnection().createStatement();
			set = stmt.executeQuery(sql);
			
			while(set.next()){
				User userObject = new User();
				Integer id = new Integer(set.getInt(1));
				userObject.setId(id);
				userObject.setName(set.getString(2));
				userObject.setEmail(set.getString(3));
				String temp =set.getString(7);
				List<String> myList = new ArrayList<String>(Arrays.asList(temp.split(",")));
				userObject.setFramework(myList);
				userObject.setSex(set.getString(8));
				userObject.setCountry(set.getString(10));
				list.add(userObject);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
			try {
				if(stmt != null)
					stmt.close();
				if(set != null)
					set.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return list;
	}

	public static void delete(int parseInt) throws SQLException, Exception {
		
		String sql = "delete from Users where id = '"+parseInt+"'";
		DBUtil.getConnection().createStatement().executeUpdate(sql);
		
		if(DBUtil.getConnection() != null)
			DBUtil.getConnection().close();
		
	}

}
