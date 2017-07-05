package p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
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
public class Register {
    private String name,password,passwordAgain,phone,sex;
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
    public void setPasswordAgain(String p)
    {
        passwordAgain=p;
    }
    public String getPasswordAgain()
    {
        return passwordAgain;
    }
     public void setPhone(String ph)
    {
        phone=ph;
    }
     public String getPhone()
    {
        return phone;
    }
     public void setSex(String s)
    {
        sex=s;
    }
    public String getSex()
    {
        return sex;
    }
    public boolean addUser()
    {
       if(repeatedTest(name))
            return false;
       if(!password.equals(passwordAgain))
            return false;
        String id=newId();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            stmt.execute("insert into user_abstract values ('"+id+"','"+name+"','"+password+"')");
            stmt.execute("insert into user_detailed(userId,phone,sex) values ('"+id+"','"+phone+"','"+sex+"')");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } 
        return true;
    }
      private boolean repeatedTest(String name)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select userName from user_abstract");
            while (rs.next()){
                if(name.equals(rs.getObject(1)))
                {
                    return true;
                }  
            }
            return false;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    private String newId()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs=stmt.executeQuery("select userId from user_abstract");
            rs.last();
            int aa=Integer.parseInt(rs.getNString(1));
            aa++;
            DecimalFormat format=new DecimalFormat("000000");
            String b=String.valueOf(format.format(aa));
            return b;
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            return "false";
        } 
    }
}
