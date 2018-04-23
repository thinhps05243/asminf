package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author SONY
 */
public class ConnectionDB {

    public static Connection getConn() {
        try {
            String connectionUrl
                    = "jdbc:sqlserver://ps05243.database.windows.net:1433;database=INF205_PS05243;user=thinh@ps05243;password=Jum@banhbe0;";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con
                    = DriverManager.getConnection(connectionUrl);
            return con;
        } catch (ClassNotFoundException | SQLException ex) {
        }
        return null;
    }
}
