package com.fit.nlu.CelineShop.jdbc;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static Connection getJDBCConnection() {
//        String host = "https://node360615-celineshop.j.layershift.co.uk";
        String db="celinedatabase";
        String host="localhost";
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
//            String pass = "SNFnfi43533";
            String pass = "";
            String url = "jdbc:mysql://"+host+"/"+db;
            connection = DriverManager.getConnection(url, user, pass);
            System.out.println("thanh cong");


        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }

        return connection;
    }
}