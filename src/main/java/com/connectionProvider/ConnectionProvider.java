package com.connectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
        public static Connection CreateConnection() {
		      try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CURDOperation", "root", "system");
				System.out.println("connection established....");
				return con;
			} catch (Exception e) {
				System.out.println(e);
				return null;
			}	
		}
}
