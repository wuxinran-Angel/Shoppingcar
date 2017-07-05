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
public class ShowProduct {
    private int number=0;
    Product[] p=new Product[20];
    int[] n=new int[20];

    public void show(String classId)
    {
        //classId=classId.substring(1, 6);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select productname,productPic,productPrice,productId from product where classId='"+classId+"'");
            while (rs.next()&&number<9){
                p[number]=new Product();
                p[number].setName(rs.getNString(1));
                p[number].setPic(rs.getNString(2));
                p[number].setPrice(rs.getFloat(3)); 
                p[number].setId(rs.getNString(4));
                number++;
            } 
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ShowProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    public int showShoppingCar(String id)
    {
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","19970611mysql..");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select productname,productPic,price,quantity,productId from shoppingcar where userId='"+id+"'");
            while (rs.next()){
                p[number]=new Product(); 
                p[number].setPrice(rs.getFloat(3)); 
                p[number].setName(rs.getNString(1));
                p[number].setPic(rs.getNString(2));
                n[number]=rs.getInt(4);
                p[number].setId(rs.getNString(5));
                number++;
            } 
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ShowProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
         return number;
}
    public Product getProduct(String number)
    {
        int i=Integer.parseInt(number);
        return p[i];
    }
    public Product getProduct(int number)
    {
        return p[number];
    }
    public int getNumber(int number)
    {
        return n[number];
    }
     public int getNumber(String number)
    {
        int i=Integer.parseInt(number);
        return n[i];
    }
}
