package exam.DAO;
import java.sql.*;
import java.util.ArrayList;



import exam.DTO.Answer;
import exam.DTO.ExamQ;
import exam.utilities.ConnectionFac;

public class CTest {
	
	Connection cn = null;
	PreparedStatement ps = null;
	Statement st = null;
	ResultSet rs = null;
	ConnectionFac con = new ConnectionFac();
	String selectctest ="select * from ctest";
	String selectans ="select answer from ctest where qid ='?'";
	
	public ArrayList<ExamQ> getdata() {
		
		ArrayList<ExamQ> arr =new ArrayList<ExamQ>();
		
		
		try {
			rs=con.getResultSet(selectctest);
			while(rs.next()) {
				ExamQ examques =new ExamQ();
				examques.setQid(rs.getInt(1));
				examques.setQuestion(rs.getString(2));
				examques.setOption1(rs.getString(3));
				examques.setOption2(rs.getString(4));
				examques.setOption3(rs.getString(5));
				examques.setOption4(rs.getString(6));
				arr.add(examques);
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return arr;
	}

	public boolean getans(Answer answer, int j) {
		
		
		
		try {
			ps= con.getpreparedstatement(selectans);
			rs=ps.executeQuery();
			while(rs.next()) {
			String ans = rs.getString(1);
			Answer answer1 = new Answer();
			answer1.setAnswer(ans);
			
			if(answer.equals(answer1)) {
				return true;
			}
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	

 public  boolean getans1(Answer answer,int count1) {
	 
	 try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","choubeyraju92&");
		 PreparedStatement ps=con.prepareStatement("select answer from ctest where qid='"+count1+"' ");
		 ResultSet rs=ps.executeQuery();
		 
		 while(rs.next()) {
				String ans = rs.getString(1);
				Answer answer1 = new Answer();
				answer1.setAnswer(ans);
				
				if(answer.equals(answer1)) {
					return true;
				}
				}
		 
	} catch (ClassNotFoundException e1) {
		
		e1.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	 
		
		
		return false;
	 
	 
	
	 
 }


 }
	


