/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cc
 */
public class Product {
    private String id,name,classId,pic,info,owner;
    private float price; 
    public void setId(String i)
    { id=i;}
    public String getId()
    {return id;}
    public void setName(String i)
    { name=i;}
    public String getName()
    {return name;}
    public void setClassId(String i)
    { classId=i;}
    public String getClassId()
    {return classId;}
    public void setPic(String i)
    { pic=i;}
    public String getPic()
    {return pic;}
    public void setInfo(String i)
    { info=i;}
    public String getInfo()
    {return info;}
    public void setPrice(float i)
    { price=i;}
    public float getPrice()
    {return price;}
     public void setOwner(String i)
    { owner=i;}
    public String getOwner()
    {return owner;}
    public void getInformation()
    {
        //id=id.substring(1,11);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select productname,productPic,productPrice,productInfo,owner,classId from product where productId='"+id+"'");
            while (rs.next()){
                setName(rs.getNString(1));
                setPic(rs.getNString(2));
                setPrice(rs.getFloat(3)); 
                setInfo(rs.getNString(4));
                setOwner(rs.getNString(5));
                setClassId(rs.getNString(6));
            }  
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
}  
    public void addInCar(String userid)
    {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select quantity from shoppingcar where productId='"+id+"'and userId='"+userid+"'");
            if(!rs.wasNull())
            stmt.execute("insert into shoppingcar values('"+userid+"','"+id+"','1','"+name+"','"+pic+"','"+price+"')");
            else
            {
            rs.next();
            int quantity=rs.getInt(1);
            quantity++;
            stmt.execute("update shoppingcar set quantity='"+quantity+"' where productId='"+id+"'and userId='"+userid+"'");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public boolean edit(String id,String userid,int n)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            stmt.execute("update shoppingcar set quantity='"+n+"' where productId='"+id+"'and userId='"+userid+"'");  
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return true;
    }
    public void addInCar(String userid,Product p)
    {   
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select quantity from shoppingcar where productId='"+id+"'and userId='"+userid+"'");
            if(!rs.wasNull())
            stmt.execute("insert into shoppingcar values('"+userid+"','"+id+"','"+name+"','"+price+"','1')");
            else
            stmt.execute("update shoppingcar set quantity=quantity+1 where productId='"+id+"'and userId='"+userid+"'");   
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
