package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.*;

import DAO.DAO;
import java.util.ArrayList;

/**
 * Servlet implementation class NewServlet
 */
@WebServlet("/NewServlet")
public class NewServlet extends HttpServlet {       
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public NewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int matchNo=Integer.parseInt(request.getParameter("matchNo"));
		String venue=request.getParameter("venue");
		DAO d=new DAO();
		String action=request.getParameter("action4");
		if(action.equals("Bet"))
		{
		 ArrayList<FixtureBean> a1=d.view(matchNo,venue);
		 if(a1.size()>0)
		 {
		    RequestDispatcher rd=request.getRequestDispatcher("View.jsp");
			request.setAttribute("bets",a1);
			rd.forward(request,response);
		}
		else
		{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		}
	}
}
	
