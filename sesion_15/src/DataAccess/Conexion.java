package DataAccess;

import java.sql.*;

public class Conexion {

    private static String uri = "jdbc:mysql://localhost:3306/lab";
    private static String user = "root";
    private static String pass = "root";

    public static Connection getConnection() {

        try {
            Connection connection = DriverManager.getConnection(uri, user, pass);

            System.out.println("Conexion establecida!");
            return connection;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
