package jspCrud;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.sql.ConnectionPoolDataSource; 
public class UserDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife","root","");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into endanger(name,gender,type,health,location) values(?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getGender());  
	        ps.setString(3,u.getType());  
	        ps.setString(4,u.getHealth());  
	        ps.setString(5,u.getLocation());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int update(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update endanger set name=?,gender=?,type=?,health=?,location=? where id=?");  
	        ps.setString(1,u.getName());  
	        ps.setString(2,u.getGender());  
	        ps.setString(3,u.getType());
	        ps.setString(4,u.getHealth());  
	        ps.setString(5,u.getLocation());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from endanger where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<User> getAllRecords(){  
	    List<User> list=new ArrayList<User>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from endanger");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name")); 
	            u.setGender(rs.getString("gender"));
	            u.setType(rs.getString("type"));
	            u.setHealth(rs.getString("health"));           	            
	            u.setLocation(rs.getString("location"));
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from endanger where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name")); 
	            u.setGender(rs.getString("gender"));
	            u.setType(rs.getString("type"));
	            u.setHealth(rs.getString("health"));           	            
	            u.setLocation(rs.getString("location"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
}
