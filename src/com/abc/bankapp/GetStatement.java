package com.abc.bankapp;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class GetStatement extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		int accno = (int) session.getAttribute("accno");
		
		Model model = new Model();
		model.setAccno(accno);
		model.getStatement();
		ArrayList<Integer> arrayList = model.getArrayList();
		
		if(arrayList.isEmpty())
			response.sendRedirect("/BankApp/getStatementFail.html");
		else
		{
			session.setAttribute("arrayList", arrayList);
			response.sendRedirect("/BankApp/getStatementSuccess.jsp");
		}
		
	}

}



