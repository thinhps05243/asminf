/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class Products {

    public List<Product> showProduct(String tensp) {
        try {
            Connection conn = ConnectionDB.getConn();
            String sql = "Select * from Products";
            if (tensp.length() > 0) {
                sql += " Where Name like '%" + tensp + "%'";
            }
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String Code = rs.getString(1);
                String Name = rs.getString(2);
                float Price = rs.getFloat(3);
                String brand = rs.getString(4);
                String images = rs.getString(5);
                Product sp = new Product(Code, Name, Price,brand,images);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public void delete(String masp) {
        try {
            Connection conn = ConnectionDB.getConn();
            String sql = "delete from Products where Code = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, masp);
            st.executeUpdate();
            conn.close();
        } catch (Exception e) {
        }
    }

    public void insert(String code, String name, float price,String brand,String image) {
        try {
            Connection conn = ConnectionDB.getConn();
            String sql = "insert into Products values(?,?,?,?,?)";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, code);
            st.setString(2, name);
            st.setFloat(3, price);
            st.setString(4, brand);
            st.setString(5, image);
            st.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     public void update(String masp, String tensp, float gia,String brand,String images) {
        try {
            Connection conn = ConnectionDB.getConn();
            String sql = "update Products set Name=?, Price=?,Brand=?,Img=? where Code=?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, tensp);
            st.setFloat(2, gia);
            st.setString(3, brand);
            st.setString(4, images);      
            st.setString(5, masp);          
            st.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
