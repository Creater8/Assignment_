package com.files.entities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao 
{
	static Connection con;
	static PreparedStatement ps;
	static  ResultSet rs;

	static
	{
	  try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver loded!!");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","1234");
		System.out.println("Connection Established");
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}
	  public static Employee checkLogin(int id , String password)
	  {
		Employee e=null;
		 
		try {
			ps=con.prepareStatement("select * from employee where empid=? and password=?");
			ps.setInt(1, id);
			ps.setString(2, password);
			rs=ps.executeQuery();
			if(rs.next())
			{
				e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setSalary(rs.getFloat(4));
			}
			} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	  }
	  
	  public static int saveRecords(Employee emp)
	  {
		  int status=0;
		  
		  try {
			ps=con.prepareStatement("insert into employee values(?,?,?,?)");
			ps.setInt(1, emp.getId());
			ps.setString(2, emp.getName());
			ps.setString(3, emp.getPassword());
			ps.setFloat(4, emp.getSalary());
		    status = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		   return status;
	  }
	  
	  
	  
	  
	 public static List<Employee> getEmployee()
	 {
		 ArrayList<Employee> elist =new ArrayList<Employee>();
		 try {
			ps=con.prepareStatement("Select * from employee ");
			
			rs=ps.executeQuery();
			 
			Employee e= new Employee();
			while(rs.next())
			{
				e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setSalary(rs.getFloat(4));
				elist.add(e);
				 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return elist;
	 }
	 
	 public static List<Employee> getEmployee(int start, int total)
	 {
		 ArrayList<Employee> elist =new ArrayList<Employee>();
		 try {
			ps=con.prepareStatement("Select * from employee limit ?,?");
			ps.setInt(1, start);
			ps.setInt(2, total);
			rs=ps.executeQuery();
			 
			Employee e= new Employee();
			while(rs.next())
			{
				e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setSalary(rs.getFloat(4));
				elist.add(e);
				 
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return elist;
	 }
	 
	 public static int countRecords()
	 {
		 int count=0;
		 
		 try {
			ps=con.prepareStatement("select count(empid) from employee");
			rs=ps.executeQuery();
			
			if(rs.next())
			
				count=rs.getInt(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return count;
		 
	 }
	 public static int deleteRecords(int id)
	 {
		 int status=0;
		 
		 try {
			ps=con.prepareStatement("delete from employee where empid=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		    
		 
		return status;
	 }
	 
	 public static Employee getEmployee(int id)
	 {
		 Employee e=null;
		 
		  try {
			ps=con.prepareStatement("select * from employee where empid=?");
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if(rs.next())
			{
				e=new Employee();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setSalary(rs.getFloat(4)); 
				
			}
			
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		  
		 
		 return e;
	 }
	 
	 
	 
	 
	 public static int updateRecords(Employee emp)
	 {
		 int status=0;
		  try {
			ps=con.prepareStatement("update employee set name=?, password=?, salary=? where empid=?");
			ps.setString(1, emp.getName());
			ps.setString(2, emp.getPassword());
			ps.setFloat(3, emp.getSalary());
			ps.setInt(4, emp.getId());
		    status = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return status;
	 }
	  
}
