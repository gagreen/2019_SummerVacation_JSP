package com.jsplec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinOk
 */
@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinOk() {
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
		
		PrintWriter writer = response.getWriter();
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pn1 = request.getParameter("pn1");
		String pn2 = request.getParameter("pn2");
		String pn3 = request.getParameter("pn3");
		String gender = request.getParameter("gender");
		
		writer.println("<html><head></head><body>");
		
		writer.println("�̸� : " + name);
		writer.println("<br/>���̵� : " + id);
		writer.println("<br/>��й�ȣ : " + pw);
		writer.println("<br/>��ȭ��ȣ : " + pn1 + "-" + pn2 + "-" + pn3);
		writer.println("<br/>���� : " + gender);
		
		writer.println("<img src='./image/izone1.jpg'");
		
		writer.println("</body></html>");
	}

}
