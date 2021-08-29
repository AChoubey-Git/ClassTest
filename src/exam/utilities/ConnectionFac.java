package exam.utilities;
import java.sql.*;

public class ConnectionFac {

	
	Connection cn = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	ResultSet rs1 = null;
	
	public Connection getConn() {

		try {
			Class.forName("com.mysql.jdbc.Driver");// Register and load driver
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "choubeyraju92&");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return cn;
	}

	public Statement getStatement() {
		try {
			cn = this.getConn();
			st = cn.createStatement();
		} catch (SQLException se) {
			se.printStackTrace();
		}
		return st;
	}

	public ResultSet getResultSet(String sql) {
		try {
			st = this.getStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public PreparedStatement getpreparedstatement(String sql1) {
		
		try {
			cn= this.getConn();
			ps = cn.prepareStatement(sql1);
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	

}
