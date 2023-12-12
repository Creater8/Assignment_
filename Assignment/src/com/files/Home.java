package com.files;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.files.entities.Employee;
import com.files.entities.EmployeeDao;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Ho")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    response.setContentType("text/html");
	    PrintWriter pw = response.getWriter();
	    
	    int name = Integer.parseInt(request.getParameter("nm"));
		String pass = request.getParameter("pss");
		
		
		Employee emp = EmployeeDao.checkLogin(name, pass);
		if(emp==null)
		{
			pw.write("Either id or password is Incorrect!! Try Again");
			request.getRequestDispatcher("Login.jsp").include(request, response);
		}
		else
		{
			pw.write("<h1>Login Successfull!!</h1>");
			pw.write("<h1>Welcome "+emp.getName()+"</h1>");
			HttpSession session=request.getSession();
			session.setAttribute("emp", emp);
			pw.print("<a href='profile.jsp'>Next page</a>");
			
			
		}
		
	}

}
