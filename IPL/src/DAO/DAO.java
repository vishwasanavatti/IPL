/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;
import java.sql.*;
import java.util.Date;
import Bean.FixtureBean;
import Bean.*;
import Bean.ResultBean;
import DB.SQLConnection;
import java.util.ArrayList;

public class DAO {
	
	 Connection con=null;
	
	 public static boolean add(MatchResultBean t){
		 SQLConnection db=new SQLConnection();
			int j=0;
			try{
				Connection con=db.getConnection();
				
				PreparedStatement pst=con.prepareStatement("Insert match_result values(?,?,?,?,?,?,?,?,?,?,?)");
				pst.setInt(1,t.getMatch_no());
				java.util.Date utilDate = t.getMatch_date();
			    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			    pst.setString(1, t.getOwner1());
			    pst.setString(2, t.getOpponent());
			    pst.setInt(3, t.getMatch_no());
				pst.setDate(4,  sqlDate);
				pst.setString(5, t.getFixture());
				pst.setString(6, t.getVenue());
				pst.setFloat(7, t.getRatio());
				pst.setString(8, t.getBet_team());
				pst.setInt(9, t.getBet_amt());
				pst.setString(10, "");
				pst.setInt(11, 0);
				j=pst.executeUpdate();
			}catch(SQLException e){
				e.printStackTrace();
			}
			if(j>0)
			return true;
			else
				return false;
		}
    public ArrayList<FixtureBean> Fixture(){
		ArrayList<FixtureBean> a=new ArrayList<FixtureBean>();
		SQLConnection db=new SQLConnection();
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select MATCH_NO,MATCH_DATE,FIXTURE,VENUE from fixtures;");
			while(rs.next()){
				FixtureBean m=new FixtureBean();
				m.setMatch_no(rs.getInt(1));
				m.setMatch_date(rs.getDate(2));
				m.setFixture(rs.getString(3));
				m.setVenue(rs.getString(4));
				a.add(m);
			}
			}catch(SQLException e){
				System.out.println(e.getMessage());
			}
		return a;
	}
    public  ArrayList<FixtureBean> view(int matchNo,String venue){
		ArrayList<FixtureBean> a=new ArrayList<FixtureBean>();
		SQLConnection db=new SQLConnection();
		try{
			con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from fixtures where venue='"+venue+" ' and  match_No ="+matchNo);
			while(rs.next()){
				FixtureBean m=new FixtureBean();
				m.setMatch_no(rs.getInt(1));
				m.setMatch_date(rs.getDate(2));
				m.setFixture(rs.getString(3));
				m.setVenue(rs.getString(4));
				a.add(m);
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		return a;
	}
    public  ArrayList<MatchResultBean> viewResult(String owner){
		ArrayList<MatchResultBean> a=new ArrayList<MatchResultBean>();
		SQLConnection db=new SQLConnection();
		try{
			con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=null;
			if(owner==null)
			{	
			 rs=st.executeQuery("select * from match_result;");
			}
			else
			{
				 rs=st.executeQuery("select * from match_result where player='"+owner+"';");
			}
			while(rs.next()){
				MatchResultBean m=new MatchResultBean();
				m.setOwner1(rs.getString(2));
				m.setOpponent(rs.getString(3));
				m.setMatch_no(rs.getInt(4));
				m.setMatch_date(rs.getDate(5));
				m.setFixture(rs.getString(6));
				m.setVenue(rs.getString(7));
				m.setRatio(rs.getFloat(8));
				m.setBet_team(rs.getString(9));
				m.setBet_amt(rs.getInt(10));
				m.setRes(rs.getString(11));
				m.setMatch_amt(rs.getInt(12));
				a.add(m);
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		return a;
	}
    
    public ArrayList<MatchResultBean> getUpdate(int matchNo,String venue,String owner,String oppo)
    {
    	ArrayList<MatchResultBean> g=new ArrayList<MatchResultBean>();
    	SQLConnection db=new SQLConnection();
		try{
			con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=null;
			if(oppo==null)
			{
				rs=st.executeQuery("select * from match_result where venue='"+venue+"' and Player='"+owner+"' and  match_no="+matchNo);
			}
			else
			{
				rs=st.executeQuery("select * from match_result where venue='"+venue+"' and Player='"+owner+"' and  match_no="+matchNo+" and opponent='"+oppo+"';");
			}
			while(rs.next()){
				MatchResultBean m=new MatchResultBean();
				m.setOwner1(rs.getString(2));
				m.setOpponent(rs.getString(3));
				m.setMatch_no(rs.getInt(4));
				m.setMatch_date(rs.getDate(5));
				m.setFixture(rs.getString(6));
				m.setVenue(rs.getString(7));
				m.setRatio(rs.getFloat(8));
				m.setBet_team(rs.getString(9));
				m.setBet_amt(rs.getInt(10));
				g.add(m);
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
    	return g;
    }
    
    public int getTotalAmount(String owner){
    	SQLConnection db=new SQLConnection();
    	int tot=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select sum(match_amount) from match_result where player='"+owner+"';");
			while(rs.next()){
				tot=rs.getInt(1);				
			}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		
		return tot;
    }
    
    public int getTotalloss(String owner){
    	SQLConnection db=new SQLConnection();
    	int loss=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from match_result where MATCH_AMOUNT<0 and player='"+owner+"';");
			while(rs.next()){
				loss=rs.getInt(1);				
			}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		
		return loss;
    }
    
    public int getTotalmatches(String owner){
    	SQLConnection db=new SQLConnection();
    	int mat=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from match_result where MATCH_AMOUNT is not null and player='"+owner+"';");
			while(rs.next()){
				mat=rs.getInt(1);				
			}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		
		return mat;
    }
    
    public int getTotalwin(String owner){
    	SQLConnection db=new SQLConnection();
    	int win=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from match_result where MATCH_AMOUNT>0 and player='"+owner+"';");
			while(rs.next()){
				win=rs.getInt(1);				
			}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		
		return win;
    }
    
    public boolean updateResult(int matchNo,String venue,String result,String oppo,String owner)
    {
    	SQLConnection db=new SQLConnection();
		int j=0;
		ArrayList<MatchResultBean> arr =new ArrayList<MatchResultBean>();
		int tot_amt=0;
		arr=this.getUpdate(matchNo,venue,owner,oppo);
		for(MatchResultBean c:arr)
		{
			float ratio=c.getRatio();
			int bet_amt=c.getBet_amt();
			//int t_amt=this.getTotalAmount();
			int t_amt=0;
		if(result.equalsIgnoreCase("win"))
		{
			if(ratio>0)
			{
				tot_amt=(int) (t_amt+(ratio*bet_amt));
			}
			else
			{
				tot_amt=t_amt+bet_amt;
			}
		}
		else
		{
			if(ratio>0)
			{
				tot_amt=t_amt-bet_amt;
				
			}
			else
			{
				tot_amt=(int)(t_amt-(Math.abs(ratio)*bet_amt));
			}
		}
		}
		try{
			Connection con=db.getConnection();
			PreparedStatement pst=con.prepareStatement("update match_result set result='"+result +"' , match_amount="+tot_amt+" where venue='"+venue+"' and player='"+owner+"' and opponent='"+oppo+"' and match_no="+matchNo);
			j=pst.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		if(j>0)
		return true;
		else
			return false;
    }
    
    public String getVenue(String ven){
    	SQLConnection db=new SQLConnection();
    	String v=null;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from match_result where MATCH_AMOUNT is not null and player='"+ven+"';");
			while(rs.next()){
				v=rs.getString(1);				
			}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		
		return v;
    }
    
}
