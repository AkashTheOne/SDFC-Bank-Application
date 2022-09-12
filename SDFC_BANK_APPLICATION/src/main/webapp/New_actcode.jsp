<%@page import="java.sql.*"%>
<%
long Account_number=Long.parseLong(request.getParameter("actno"));
String name=request.getParameter("name");
String Password=request.getParameter("pass");
String Confirm_password=request.getParameter("cpass");
double Amount=Double.parseDouble(request.getParameter("amt"));
String Address=request.getParameter("add");
long Mobile_No=Long.parseLong(request.getParameter("mob"));

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","akash","Akash");
	
	PreparedStatement ps=conn.prepareStatement("insert into sdfc_bank values(?,?,?,?,?,?,?)");
	
	ps.setLong(1,Account_number);
	ps.setString(2,name);
	ps.setString(3,Password);
	ps.setString(4,Confirm_password);
	ps.setDouble(5,Amount);
	ps.setString(6,Address);
	ps.setLong(7,Mobile_No);
	

	int i= ps.executeUpdate();
	out.print(i+" your record has been successful added............");
	conn.close();
}
catch(Exception e){
	out.print(e);
}

%>