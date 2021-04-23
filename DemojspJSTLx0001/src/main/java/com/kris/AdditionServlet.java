package com.kris;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vo.Student;

/**
 * Servlet implementation class AdditionServlet
 */
@WebServlet("/add")
public class AdditionServlet extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		
		int k = i + j;
		
		HttpSession session = req.getSession();
		
		
		
		session.setAttribute("kval", k);
		
		
		
		
		// Student thing
		Student s1 = new Student(783,"Krishna");
		session.setAttribute("stu1", s1);
		
		
		List<Student> studs = Arrays.asList(
											new Student(123,"raj"),
											new Student(156,"shyam"),
											new Student(393,"beem")
                                            );
		session.setAttribute("stuArray", studs);
		
		
		res.sendRedirect("display.jsp");
		
		
	}
	
	
}
	 