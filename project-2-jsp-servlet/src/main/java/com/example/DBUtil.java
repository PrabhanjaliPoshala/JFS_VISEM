package com.example;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/employeedb";
            String user = "root";
            String password = "prabha@123";

            return DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
