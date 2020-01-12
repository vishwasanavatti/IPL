package Bean;

import java.util.Date;

public class MatchResultBean {
	private int Sl_No;
	private String owner1;
	private int Match_no;
	private Date match_date;
	private String Fixture;
	private String Venue;
	private float ratio;
	private int bet_amt;
	private String bet_team;
	private String res;
	private int match_amt;
	public int getSl_No() {
		return Sl_No;
	}
	public void setSl_No(int sl_No) {
		Sl_No = sl_No;
	}
	public String getOwner1() {
		return owner1;
	}
	public void setOwner1(String owner1) {
		this.owner1 = owner1;
	}
	public int getMatch_no() {
		return Match_no;
	}
	public void setMatch_no(int match_no) {
		Match_no = match_no;
	}
	public Date getMatch_date() {
		return match_date;
	}
	public void setMatch_date(Date match_date) {
		this.match_date = match_date;
	}
	public String getFixture() {
		return Fixture;
	}
	public void setFixture(String fixture) {
		Fixture = fixture;
	}
	public String getVenue() {
		return Venue;
	}
	public void setVenue(String venue) {
		Venue = venue;
	}
	public float getRatio() {
		return ratio;
	}
	public void setRatio(float ratio) {
		this.ratio = ratio;
	}
	public int getBet_amt() {
		return bet_amt;
	}
	public void setBet_amt(int bet_amt) {
		this.bet_amt = bet_amt;
	}
	public String getBet_team() {
		return bet_team;
	}
	public void setBet_team(String bet_team) {
		this.bet_team = bet_team;
	}
	public String getRes() {
		return res;
	}
	public void setRes(String res) {
		this.res = res;
	}
	public int getMatch_amt() {
		return match_amt;
	}
	public void setMatch_amt(int match_amt) {
		this.match_amt = match_amt;
	}
	
	
}
