package p;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author cc
 */

public class User {
    private String name,password,id;
    public void setName(String na)
    {
        name=na;
    }
    public String getName()
    {
        return name;
    }
    public void setPassword(String p)
    {
        password=p;
    }
    public String getPassword()
    {
        return password;
    }
     public void setId(String i)
    {
        id=i;
    }
     public String getId()
    {
        return id;
    }
     public boolean checkLogin()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from user_abstract");
            while (rs.next()){
                if(name.matches(rs.getNString(2)))
                {
                    if(password.matches(rs.getNString(3)))
                    {    
                        id=rs.getNString(1);
                        return true;
                    }
                }
            }                
            return false;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
     public boolean addShoppingCar()
     {
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from user_abstract");
            while (rs.next()){
                if(name.matches(rs.getNString(2)))
                {
                    if(password.matches(rs.getNString(3)))
                    {    
                        id=rs.getNString(1);
                        return true;
                    }
                }
            }                
            return false;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
     }
     public String getAddress()
     {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select address,phone,name from address where userId='"+id+"'");
            rs.next();
            return rs.getNString(1)+"\n"+rs.getNString(2)+"\n"+rs.getNString(3);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } 
         return null;
     }
     public void addAddress(String add,String ph,String na)
     {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            stmt.execute("insert into address values('"+id+"','"+add+"','"+ph+"','"+na+"')");    
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }   
     }
}
