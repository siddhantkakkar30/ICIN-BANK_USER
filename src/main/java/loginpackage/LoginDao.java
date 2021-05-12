package loginpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {
public boolean checkDetail(String uname,String password) throws SQLException
{
	System.out.println("hello");	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bank","root","ThinkPad@66");
		PreparedStatement st=con.prepareStatement("select * from customer where user_name=? and pass=? and enabled=?");
		st.setString(1, uname);
		st.setString(2, password);
		st.setString(3, "enabled");
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			return true;
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	return false;
}
public boolean addDetail(String uname,String password, String mob,String email,String fname,String lname,String pan,String san) throws SQLException
{
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bank","root","ThinkPad@66");
		PreparedStatement mn=con.prepareStatement("select * from customer where user_name=? and pass=?");
		mn.setString(1, uname);
		mn.setString(2, password);
		ResultSet rs=mn.executeQuery();
		if(rs.next())
		{
			return false;
		}
		PreparedStatement st=con.prepareStatement("insert into customer values(?,? ,?,?,?,?,?,?,?,?,?,?)");
		int max = 100000;
        int min = 10000;
        int range = max - min + 1;
        int random = (int)(Math.random() * range) + min;
        String p=String.valueOf(random);
        int random2= (int)(Math.random() * range) + min;
        String s=String.valueOf(random2);
		st.setInt(1, 0);
		st.setString(2, fname);
		st.setString(3, lname);
		st.setString(4, uname);
		st.setString(5, email);
		st.setString(6, mob);
		st.setString(7, p);
		st.setString(8, s);
		st.setString(9, "enabled");
		st.setString(10, password);
		st.setString(11, pan);
		st.setString(12, san);
		int count=st.executeUpdate();
		System.out.println("helloOIOIOIOO");
		if(count>0)
		{
			return true;
		}
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	return false;
}
}
