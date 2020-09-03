
package negocio;

import conectar.conexion;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.user;

public class N_user {
    
    //to register
   public void register(user users){
       try {
           Connection cn = conexion.getConnection();
           PreparedStatement prst = cn.prepareStatement("insert into users values(null,?,?)");
           prst.setString(1, users.getUser());
           prst.setString(2, users.getPass());
           prst.executeUpdate();
       } catch (Exception e) {
           throw new RuntimeException(e);
       }
   }
    
    
    //validate existing user
    public boolean login(String user, String pass){
        try {
            Connection cn = conexion.getConnection();
            PreparedStatement prst = cn.prepareStatement("select * from users where U_user = ? && U_pass = ?");
            prst.setString(1, user);
            prst.setString(2, pass);
            ResultSet rs = prst.executeQuery();
            while (rs.absolute(1)) {                
                return true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return false;
    }
    
    
    //encrypt password with MD5
    public String encrypt(String pass){
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] EnByte = md.digest(pass.getBytes());
            BigInteger hash = new BigInteger(1,EnByte);
            String EnString = hash.toString(16);
            while(EnString.length()<32){
                 EnString = "0"+EnString;
            }
            return EnString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
}
