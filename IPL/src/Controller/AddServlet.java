package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.*;
import Bean.ResultBean;
import DAO.DAO;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
		try{
			
		float ratio= Float.parseFloat(request.getParameter("ratio"));
		String bet_team=request.getParameter("team");
		int bet_amt=Integer.parseInt(request.getParameter("amt"));
		int match_no=Integer.parseInt(request.getParameter("matchNo"));
		String venue=request.getParameter("venue");
		String fixture=request.getParameter("fixture");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Date date = sdf.parse(request.getParameter("matchDt"));
		java.sql.Date date1= new java.sql.Date( date.getTime());
		System.out.println(date);
		System.out.println(date1);
		System.out.println(request.getParameter("matchDt"));
		String owner1=request.getParameter("owner");
		String oppo=request.getParameter("oppo");
		
		MatchResultBean res=new MatchResultBean();
		res.setRatio(ratio);
		res.setBet_team(bet_team);
		res.setBet_amt(bet_amt);
		res.setMatch_no(match_no);
		res.setVenue(venue);
		res.setMatch_date(date1);
		res.setFixture(fixture);
		res.setOwner1(owner1);
		res.setOpponent(oppo);
		
		String action= request.getParameter("action5");
		if(action.equals("placeBet"))
		{
			boolean b=DAO.add(res);
			if(b)
			{
				request.getRequestDispatcher("added.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("Error1.jsp").forward(request, response);
			}
		}
		}
		catch(Exception e){
			System.out.println(e);
		}
	}

}
