package oscar;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.lang.ClassNotFoundException;
import java.sql.DriverAction; 

public class Connect implements DriverAction{
    private Connection conn;
    private String dbName=null;
    private String url = "jdbc:mysql://localhost:3306/";
    private ResultSet rs = null;
    Connect(String text) {
        conn = null;
        dbName=text;
    }
    

    public Connection connectDatabase() {
        
        try {
            

            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(url, "root","");
            

        } catch (SQLException ex) {
            System.out.println("Hiba a kapcsolódás során!");
            System.out.println(ex.getMessage());
            ;

        } catch (ClassNotFoundException ex) {
            System.out.println("Nincs meg a driver!");
        }

        return conn;

    }

    public void cloceConnect() {
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException ex) {
                System.out.println("Hiba a lezárás során!");
            }
            
        }
    }

    @Override
    public void deregister() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
