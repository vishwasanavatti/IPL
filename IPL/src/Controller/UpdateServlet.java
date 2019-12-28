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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		// TODO Auto-generated method stub
		int matchNo=Integer.parseInt(request.getParameter("matchNo"));
		String venue=request.getParameter("venue");
		String owner=request.getParameter("owner");
		String oppo=null;
		DAO d = new DAO();
		
		String act=request.getParameter("action6");
		if(act.equals("getUpdate"))
		{
			ArrayList<MatchResultBean> g=d.getUpdate(matchNo,venue,owner,oppo);
			if(g.size()>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("updateResult.jsp");
				request.setAttribute("up", g);
				rd.forward(request,response);
			}
			else
			{
				request.getRequestDispatcher("getUpdateError.jsp").forward(request, response);
			}
		}
	}

}
