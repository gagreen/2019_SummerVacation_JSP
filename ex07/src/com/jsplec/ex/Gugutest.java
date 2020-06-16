package com.jsplec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gugutest
 */
@WebServlet("/Gugutest")
public class Gugutest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gugutest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		response.setCharacterEncoding("EUC-KR");
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("<table border=1 width='600' align=center>");
		writer.println("<tr align=center bgcolor='yellow'><td colspan=2>" + dan + "´Ü Ãâ·Â</td></tr>");
		
		for(int i=1; i<=9; i++) {
			writer.println("<tr align=center>");
			writer.println("<td width='300'>" + dan + "*" + i + "</td>");
			writer.println("<td width='300'>" + dan*i + "</td>");
			writer.println("</tr>");
		}
		writer.println("</table>");
	}

}
