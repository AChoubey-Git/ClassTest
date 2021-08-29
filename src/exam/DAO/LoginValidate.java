package exam.DAO;
import java.sql.*;

import exam.DTO.Login;
import exam.utilities.ConnectionFac;

public class LoginValidate {
	Connection cn = null;
	Statement st = null;
	ResultSet rs = null;
	
	ConnectionFac con = new ConnectionFac();
	
	String selectUser = "select * from loginuser"
			+ "  ";
	
	public boolean validate (Login user) {
		 try {
			 
			 rs= con.getResultSet(selectUser); 
			 while(rs.next()) {
				 String Uname = rs.getString(2);
				 String Upass = rs.getString(3);
				 
				 Login userDB = new Login();
				    
				    userDB.setUname(Uname);
				    userDB.setUpass(Upass);
				    if(user.equals(userDB)) {
				    	
				    	return true;
				    }
				 
			 }
			 
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		 return false;
	}

}
