package com.abc.bankapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class ChangePwd extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		int accno = (int) session.getAttribute("accno");
		//String pwd = (String) session.getAttribute("pwd");
		String npwd = request.getParameter("npwd");
		Model model = new Model();
		model.setAccno(accno);
		model.setPwd(npwd);
		boolean result = model.changePwd();
		if(result)
			response.sendRedirect("/BankApp/changePwdSuccess.html");
		else
			response.sendRedirect("/BankApp/changePwdFail.html");
			
	
	}

}
