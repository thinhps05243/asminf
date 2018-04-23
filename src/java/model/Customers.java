/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class Customers {
    private String username;
    private String password;
    private String hoten;
    private boolean roles;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Customers(String username, String password, String hoten,boolean roles) {
        this.username = username;
        this.password = password;
        this.hoten = hoten;
        this.roles = roles;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public boolean isRoles() {
        return roles;
    }

    public void setRoles(boolean roles) {
        this.roles = roles;
    }

    
    public Customers(){
        
    }
    public boolean checkLogin(String username,String pwd){
        try {
            Connection conn =ConnectionDB.getConn();
            String sql = "Select * from CUSTOMERS where Username = ? and Password = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, pwd);
            ResultSet rs = st.executeQuery();
            boolean exist = rs.next();
            if(exist){
                return true;
            }
            conn.close();
        } catch (Exception e) {
        }
        return false;
    }
    public boolean updateRecord() {
        try {
            Connection conn =ConnectionDB.getConn();
            String sql = "Update Customers set Password = ?,Hoten= ?,Roles = ? where Username = ? ";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, password);
            stm.setString(2, hoten);
            stm.setBoolean(3, roles);
            stm.setString(4, username);      
            int result = stm.executeUpdate();
            stm.close();
            conn.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public boolean deleteRecord() {
        try {
            Connection conn =ConnectionDB.getConn();
            String sql = "delete from Customers where Username = ? ";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            int result = stm.executeUpdate();
            stm.close();
            conn.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean insert(String Username, String password, String Hoten,boolean roles) {
        try {
            Connection conn =ConnectionDB.getConn();
            String sql = "insert into Customers values(?,?,?,?)";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, Username);
            stm.setString(2, password);
            stm.setString(3, Hoten);
            stm.setBoolean(4, roles);
            int result = stm.executeUpdate();
            stm.close();
            conn.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public Customers[] searchLastname(String name) {
        try {
            Connection conn =ConnectionDB.getConn();
            String sql = "select * from Customers where Hoten like ?";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, "%" + name + "%");
            ResultSet rs = stm.executeQuery();
            ArrayList list = new ArrayList();
            while (rs.next()) {
                String user = rs.getString(1);
                String pass = rs.getString(2);
                String hoten = rs.getString(3);
                boolean roles = rs.getBoolean(4);
                Customers tmp = new Customers(user, pass,hoten,roles);
                list.add(tmp);
            }
            Customers[] result = new Customers[list.size()];
            list.toArray(result);
            rs.close();
            stm.close();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
     public List<Customers> showCustomer(String ten) {
        try {
            Connection con = ConnectionDB.getConn();
            String sql = "select * from Customers";
            if (ten.length() > 0) {
                sql += " where Username like '%" + ten + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Customers> list = new ArrayList<Customers>();
            while (rs.next()) {
                String user = rs.getString(1);
                String password = rs.getString(2);
                String hoten = rs.getString(3);
                boolean role = rs.getBoolean(4);
                Customers cus = new Customers(user, password,hoten,role);
                list.add(cus);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
