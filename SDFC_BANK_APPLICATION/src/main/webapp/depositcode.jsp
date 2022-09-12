<%@page import="java.sql.*"%>
<%
long Account_number=Long.parseLong(request.getParameter("actno"));
String name=request.getParameter("name");
String Password=request.getParameter("pass");
double Amount=Double.parseDouble(request.getParameter("amt"));

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","akash","Akash");
	
	PreparedStatement ps=conn.prepareStatement("update sdfc_bank set Amount=Amount+? where Account_number=? and name=? and Password=?");
	
	ps.setDouble(1,Amount);
	ps.setLong(2,Account_number);
	ps.setString(3,name);
	ps.setString(4,Password);
	
	ps.executeUpdate();
	out.println(Account_number+" updated");
	
	PreparedStatement ps1 = conn.prepareStatement("select amount from sdfc_bank where Account_number = ? and name = ? and Password = ?");

			ps1.setLong(1,Account_number);
			ps1.setString(2,name);
			ps1.setString(3,Password);
			
			ResultSet rs=ps1.executeQuery();
			while(rs.next())
			{
				out.println("Your new Balance is : "+rs.getString(1)+" Increase by "+Amount);
			}
		
		
				conn.close();
		
	 }
	 catch(Exception e)
	 {
		 
		 out.print(e);
	 }
	 %>