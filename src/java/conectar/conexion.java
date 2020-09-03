
package conectar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
            return cn;
          } catch (ClassNotFoundException | SQLException e) {
        }
        return null;
        
    }
    
}
