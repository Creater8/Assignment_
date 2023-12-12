package com.files;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.files.entities.Employee;
import com.files.entities.EmployeeDao;

/**
 * Servlet implementation class NewRegister
 */
@WebServlet("/New")
public class NewRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Enumeration<String> parameterNames = request.getParameterNames();
		 
		Employee e=new Employee();
		while(parameterNames.hasMoreElements())
		{
			String s = parameterNames.nextElement();
			if(s.equals("id"))
				e.setId(Integer.parseInt(request.getParameter(s)));
			else if(s.equals("name"))
				e.setName(request.getParameter(s));
			else if(s.equals("password"))
				e.setPassword(request.getParameter(s));
			else if(s.equals("salary"))
				e.setSalary(Float.parseFloat(request.getParameter(s)));
			
			
		}
		
		
		response.setContentType("text/html");
	    PrintWriter pw = response.getWriter();
		int status = EmployeeDao.saveRecords(e);
        if(status==0)
        {
       	 pw.write("record does not saved!!");
       	 request.getRequestDispatcher("Regestration.jsp").include(request, response);
        }
        else
        {
       	 pw.write("record saved successfully!!");
        }
	} 

}
