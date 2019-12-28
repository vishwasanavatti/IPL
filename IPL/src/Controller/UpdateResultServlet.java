package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.*;
import DAO.DAO;
import java.util.ArrayList;
/**
 * Servlet implementation class UpdateResultServlet
 */
@WebServlet("/UpdateResultServlet")
public class UpdateResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateResultServlet() {
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
		int mn=Integer.parseInt(request.getParameter("matchNo"));
		String v=request.getParameter("venue");
		String res=request.getParameter("result");
		String act=request.getParameter("action7");
		String oppo=request.getParameter("oppo");
		String owner=request.getParameter("owner");
		
		DAO dao=new DAO();
		if(act.equals("update"))
		{
			boolean b=dao.updateResult(mn,v,res,oppo,owner);
			if(b)
			{
				request.getRequestDispatcher("viewUpdateResult.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("updateError.jsp").forward(request,response);
			}
		}	
	}

}
