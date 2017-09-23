package com.artur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;


public class Controller extends HttpServlet {

	String driverName = "org.postgresql.Driver";
	String connectionUrl = "jdbc:postgresql://localhost:5432/";
	String dbName = "postgres";
	String userId = "postgres";
	String DBpass = "gfhjkm";
	PreparedStatement theStatement = null;
	private Logger logger = Logger.getRootLogger();

	private static final long serialVersionUID = 1L;

	public Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String _username = request.getParameter("txtname");
			String _password = request.getParameter("txtpassword");
			try {

				Connection connection = DriverManager.getConnection(
						connectionUrl, userId, DBpass);
				theStatement = connection
						.prepareStatement("select * from testproject where name=? and password=?");
				theStatement.setString(1, request.getParameter("txtname"));
				theStatement.setString(2, request.getParameter("txtpassword"));
				ResultSet theResult = theStatement.executeQuery();
				if (theResult.next()) {
					logger.info("Пользователь успешно авторизировался");
					response.sendRedirect("welcome.jsp?name="+_username);
				}
				else {
				      response.setStatus(401);	
					out.println("Имя пользователя и пароль не подходят. Повторите попытку");
					logger.info("Имя пользователя или пароль введены неверно");
				}
				   
              				
					
					
				
			}

			catch (Exception e) {
				System.out.println(e.getMessage());

			}

		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
