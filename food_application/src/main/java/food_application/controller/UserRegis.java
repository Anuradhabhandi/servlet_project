package food_application.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.usertype.UserCollectionType;

import food_application.dao.UserCrud;
import food_application.dto.User;

@WebServlet("/userrgis")
public class UserRegis extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fname= req.getParameter("fname");
		String lname=   req.getParameter("lname");
		String email=   req.getParameter("email");
		String pwd=   req.getParameter("pwd");
		String phn=   req.getParameter("phn");
		String gen=   req.getParameter("gen");
		String address=   req.getParameter("address");
		
		UserCrud crud=new UserCrud();
		crud.SaveUser(new User(fname, lname, email, pwd, Long.parseLong(phn), address, gen));
		  RequestDispatcher dis = req.getRequestDispatcher("userlogin.jsp");
    	  dis.forward(req, resp);
		   
		   
	}
	

	
}
