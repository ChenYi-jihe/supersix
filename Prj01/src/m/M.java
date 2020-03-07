package m;

import java.sql.*;

public class M {

	    private static  Connection mConnect;
	    static {
	        try {
	            System.out.println("init---");
	            Class.forName("com.mysql.jdbc.Driver");
	            mConnect=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoool", "root", "root");
	        } catch (ClassNotFoundException | SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	    }
	    public static Connection getConnection() {
	        return mConnect;
	        
	    }
	    public static void  close() {
	        try {
	            mConnect.close();
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	    }
	
	
	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
			Statement stmt=null;
		    ResultSet rs=null;
		  	M.getConnection();
		  	System.out.println("-");
		  	 System.out.print("数据库连接成功！");  
          

             String sql = "SELECT *FROM t_vote;";  //查询语句
             stmt = mConnect.createStatement();  
             rs = stmt.executeQuery(sql);  
             System.out.print("查询结果：");  
             System.out.print("<br />");  
            
             System.out.print("<br />");  
             while (rs.next()) {  
            	 System.out.println(rs.getString("TEACHERNO"));
            	 System.out.println(rs.getString("TEACHERNAME"));
            	 System.out.println("<BR>"); 
		  	
	}

}
}
