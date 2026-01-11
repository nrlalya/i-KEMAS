/* 
    Document   : DBUtil.java
*/

package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    
    private static final String URL = "jdbc:mysql://localhost:3306/i-kemas";
    private static final String USER = "root";
    private static final String PASSWORD = "admin";

    // Method untuk dapatkan connection
    public static Connection getConnection() throws SQLException {
        try {
            // Load driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}