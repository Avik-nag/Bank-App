package com.abc.bankapp;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class ChangePwdFilter
 */
public class ChangePwdFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ChangePwdFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		/**String pwd = (String) session.getAttribute("pwd");
		
		String opwd = request.getParameter("opwd");
		pwd = request.getParameter("pwd");**/
		String npwd = request.getParameter("npwd");
		String cnpwd = request.getParameter("cnpwd");
		
		//if(pwd.equals(opwd)) {
		if(npwd.equals(cnpwd))
			chain.doFilter(request, response);
		else
			((HttpServletResponse) response).sendRedirect("/BankApp/errorChangePwd.jsp");
		//}
		//else
			//((HttpServletResponse) response).sendRedirect("/BankApp/changePwdFail.html");
			
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
