 <%@ page import="java.sql.*" %>
<%

long Account_number=Long.parseLong(request.getParameter("actno"));
String name=request.getParameter("name");
String Password=request.getParameter("pass");

try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","akash","Akash");
	
	PreparedStatement ps=conn.prepareStatement("delete from sdfc_bank where Account_number=? and name=? and Password=?");
	
	ps.setLong(1,Account_number);
	ps.setString(2,name);
	ps.setString(3,Password);
	
	ps.executeUpdate();
	out.println("your account has been deleted");
	conn.close();
}
catch(Exception ex){
	
	out.println(ex);
}
%>