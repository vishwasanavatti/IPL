package Bean;
import java.util.Date;

public class FixtureBean {
		private int Match_no;
		private Date match_date;
		private String Fixture;
		private String Venue;
		private float ratio;
		private String bet_team;
		private int bet_amt;
		private String result;
		private int tot_amt;
		
		public float getRatio() {
			return ratio;
		}
		public void setRatio(float ratio) {
			this.ratio = ratio;
		}
		public String getBet_team() {
			return bet_team;
		}
		public void setBet_team(String bet_team) {
			this.bet_team = bet_team;
		}
		public int getBet_amt() {
			return bet_amt;
		}
		public void setBet_amt(int bet_amt) {
			this.bet_amt = bet_amt;
		}
		public String getResult() {
			return result;
		}
		public void setResult(String result) {
			this.result = result;
		}
		public int getTot_amt() {
			return tot_amt;
		}
		public void setTot_amt(int tot_amt) {
			this.tot_amt = tot_amt;
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
		
}
