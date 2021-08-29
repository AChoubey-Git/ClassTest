package exam.DAO;

import java.sql.*;



import exam.DTO.Register;
import exam.utilities.ConnectionFac;



public class RegisterDao {
	
	Connection cn = null;
	PreparedStatement ps = null;
	Statement st = null;
	ResultSet rs = null;
	ConnectionFac con = new ConnectionFac();
	String userdataSQL = "insert into loginuser values(?,?)";
	
	public void RegisterData(Register userdata) {
		
		    
		
		  try {
			 
			  cn = con.getConn();
			ps = cn.prepareStatement(userdataSQL);
			ps.setString(1, userdata.getUname());
			ps.setString(2, userdata.getUpass());
			
			ps.executeUpdate();
			
			System.out.println("Values inserted successfully");
			
			ps.close();			
			cn.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
