<%@page import="java.sql.*" %>
<body>  
<%

long Account_number=Long.parseLong(request.getParameter("actno"));
String name=request.getParameter("name");
String Password=request.getParameter("pass");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","akash","Akash");
	
	PreparedStatement ps=conn.prepareStatement("select * from sdfc_bank where Account_number=? and name=? and Password=?");
	
	ps.setLong(1,Account_number);
	ps.setString(2,name);
	ps.setString(3,Password);
	
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData rss=rs.getMetaData(); 
	int n=rss.getColumnCount();
	out.println("<table border=1><tr>");
	for(int i=1;i<=n;i++)  
	  
	 out.println("<td>"+rss.getColumnName(i)+"</td>"); 
	  
	 out.println("</tr>"); 
	  
	 out.print("<tr>");
	 while(rs.next()) 
	 { 
	 for(int i=1;i<=n;i++) 
	   
	 out.println("<td>"+rs.getString(i)+"</td>");    
	 out.println("</tr>");
	 }
	  
	 out.println("</table> </body> </html>"); 
	  
	} 
	catch(Exception ex) 
	{ 
	 System.out.println(ex); 
	} 
	%>
