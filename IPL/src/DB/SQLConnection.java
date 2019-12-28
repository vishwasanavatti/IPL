package DB;/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;

public class SQLConnection {
     
    /**
     *
     * @param args
     * @throws ClassNotFoundException
     * @throws SQLException
     */
	private String url = "jdbc:sqlserver://localhost:1433"+";databaseName=IPL";
	private String user = "Vishwas";
	private String password = "Vish@12345";
	private Connection connection=null;

	public Connection getConnection() {
		try {
			closeConnection();
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, user, password);     
			System.out.println("Connection Established Successfull and the DATABASE NAME IS:"
                    + connection.getMetaData().getDatabaseProductName());
		} catch (SQLException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
			System.out.println("exit");
		}

		return connection;
	}

	public void closeConnection() {

		try {
			if (connection != null && connection.isClosed() == false)
				connection.close();
			connection = null;

		} catch (SQLException e) {
			e.printStackTrace();
		}
        }
}


  
