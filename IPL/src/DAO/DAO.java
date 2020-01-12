/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAO;
import java.sql.*;

import Bean.FixtureBean;
import Bean.NewBean;
import Bean.ResultBean;
import DB.SQLConnection;
import java.util.ArrayList;

public class DAO {
	
	 Connection con=null;
	
	 public static boolean add(ResultBean t){
		 SQLConnection db=new SQLConnection();
			int j=0;
			try{
				Connection con=db.getConnection();
				
				PreparedStatement pst=con.prepareStatement("update fixtures set ratio="+t.getRatio()+",bet_on='"+t.getBet_team()+"', bet_amount="+t.getBet_amt()+" where  venue='"+t.getVenue()+"'and match_no="+t.getMatch_no());
			
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
    public  ArrayList<FixtureBean> viewResult(){
		ArrayList<FixtureBean> a=new ArrayList<FixtureBean>();
		SQLConnection db=new SQLConnection();
		try{
			con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from fixtures;");
			while(rs.next()){
				FixtureBean m=new FixtureBean();
				m.setMatch_no(rs.getInt(1));
				m.setMatch_date(rs.getDate(2));
				m.setFixture(rs.getString(3));
				m.setVenue(rs.getString(4));
				m.setRatio(rs.getFloat(5));
				m.setBet_team(rs.getString(6));
				m.setBet_amt(rs.getInt(7));
				m.setResult(rs.getString(8));
				m.setTot_amt(rs.getInt(9));
				a.add(m);
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
		return a;
	}
    
    public ArrayList<FixtureBean> getUpdate(int matchNo,String venue)
    {
    	ArrayList<FixtureBean> g=new ArrayList<FixtureBean>();
    	SQLConnection db=new SQLConnection();
		try{
			con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from fixtures where venue='"+venue+"' and match_no="+matchNo);
			while(rs.next()){
				FixtureBean m=new FixtureBean();
				m.setMatch_no(rs.getInt(1));
				m.setMatch_date(rs.getDate(2));
				m.setFixture(rs.getString(3));
				m.setVenue(rs.getString(4));
				m.setRatio(rs.getFloat(5));
				m.setBet_team(rs.getString(6));
				m.setBet_amt(rs.getInt(7));
				g.add(m);
			}
			}catch(SQLException e){
				e.printStackTrace();
			}
    	return g;
    }
    
    public int getTotalAmount(){
    	SQLConnection db=new SQLConnection();
    	int tot=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select sum(total_amount) from fixtures;");
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
    
    public int getTotalloss(){
    	SQLConnection db=new SQLConnection();
    	int loss=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from fixtures where TOTAL_AMOUNT<0;");
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
    
    public int getTotalmatches(){
    	SQLConnection db=new SQLConnection();
    	int mat=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from fixtures where TOTAL_AMOUNT is not null;");
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
    
    public int getTotalwin(){
    	SQLConnection db=new SQLConnection();
    	int win=0;
		try{
			 con=db.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from fixtures where TOTAL_AMOUNT>0;");
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
    
    public boolean updateResult(int matchNo,String venue,String result)
    {
    	SQLConnection db=new SQLConnection();
		int j=0;
		ArrayList<FixtureBean> arr =new ArrayList<FixtureBean>();
		int tot_amt=0;
		arr=this.getUpdate(matchNo, venue);
		for(FixtureBean c:arr)
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
			PreparedStatement pst=con.prepareStatement("update fixtures set result='"+result +"' , total_amount="+tot_amt+"where venue='"+venue+"' and match_no="+matchNo);
			j=pst.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		if(j>0)
		return true;
		else
			return false;
    }
    
}
