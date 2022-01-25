package servlets;
import java.io.*;
import java.sql.*;
import javax.servlet.*;

import constants.IOnlineBookStoreConstants;
import sql.IpurchaseConstants;

public class purchaseServlet extends GenericServlet{

	

	public void service(ServletRequest req,ServletResponse res) throws IOException,ServletException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Select * from " +IpurchaseConstants.TABLE_purchase);
			ResultSet rs = ps.executeQuery();
			RequestDispatcher rd = req.getRequestDispatcher("purchase.html");
			rd.include(req, res);
			pw.println("<div class=\"tab\">purchase</div>");
			pw.println("<div class=\"tab\">\r\n" + 
					"		<table>\r\n" + 
					"			<tr>\r\n" + 
					"				\r\n" + 
					"				<th>username</th>\r\n" + 
					"				<th>barcode</th>\r\n" + 
					
					"				<th>Quantity</th><br/>\r\n" + 
					"			</tr>");
			while(rs.next())
			{
				String username = rs.getString(1);
				String barcode = rs.getString(2);
				int bQty = rs.getInt(5);
				pw.println("<tr><td>"+username+"</td>");
				pw.println("<td>"+barcode+"</td>");
				
				pw.println("<td>"+bQty+"</td></tr>");
			}
			pw.println("</table>\r\n" + 
					"	</div>");
			//pw.println("<div class=\"tab\"><a href=\"purchase.html\">purchase</a></div>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
