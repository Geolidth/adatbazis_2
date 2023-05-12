package oscar2;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;  

public class Statements {
        private Statement stmt = null;
        private ResultSet rs = null;
        private String sql = null;
        private Connect connect = new Connect();

    Statements() {
        
    }

    public void getOscar1() {
        
        Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT cim, dij FROM filmek order by jelol desc, cim;");
            System.out.println("Készítsen listát az összes filmről a címük és elnyert díjaik számának feltüntetésével! A listát\n" +
"rendezze a jelölések száma szerint csökkenő rendbe, ezen belül cím szerint névsorba!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("dij")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar2(){
        Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("select cim, dij, jelol from filmek where ev>1950 and dij>=3 order by cim;");
            System.out.println("Listázza ki az 1950 után legalább 3 Oscar-díjjal jutalmazott filmek címét, a díjak és jelölések\n" +
"számát! A listát rendezze a filmek címe szerint névsorba!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("dij")+"\t");
                System.out.println(rs.getInt("jelol")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
}
    
    public void getOscar3(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("select cim, ev from filmek where jelol>=(select DISTINCT jelol from filmek group by jelol desc limit 1 offset 4) order by jelol desc;");
            System.out.println("Készítsen listát az 5 legtöbb jelölést kapott film címéről, a díjazás évéről!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("ev")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar4(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("select cim,dij from filmek where ev>=2000 and dij>=(select DISTINCT dij from filmek where ev>=2000 order by dij desc limit 1 offset 4) order by dij desc;");
            System.out.println("Készítsen listát az 2000 után 5 legtöbb díjat kapott film címéről és a díjak számáról! Kezelje\n" +
"az esetleges holtversenyt!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("dij")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar5(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("select cim,jelol, dij from filmek where cim like '%King%'order by jelol desc,dij desc;");
            System.out.println("Listázza ki az összes olyan film adatát, amely címében szerepel a King szó vagy szórészlet!\n" +
"Jelenítse meg a film címét, a jelölések és az elnyert díjak számát! Rendezze a listát a\n" +
"jelölések, ezen belül a díjak száma szerint csökkenő sorrendbe!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("dij")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar6(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT * FROM filmek WHERE dij=jelol order by ev,cim;");
            System.out.println("Listázza ki azoknak a filmeknek minden adatát, amelyek minden jelölést megnyertek! A\n" +
"listát rendezze év szerint, ezen belül cím szerint növekvő sorrendbe!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("dij")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar7(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT cim, ev FROM filmek where (ev between 1939 and 1945 ) and dij>=3 order by ev ,cim;");
            System.out.println("Listázza ki a II. világháború alatt legalább 3 Oscar-díjat kapott filmek címét és a díjazás évét!\n" +
"A listát rendezze a díjazás éve, ezen belül a film címe szerint növekvő sorrendbe!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("ev")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar8(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT cim FROM filmek WHERE (ev=1994 or ev=1973) and (jelol>4) order by cim;");
            System.out.println("Listázza ki azokat a filmeket, amelyek az Ön vagy édesanyja születési évében kaptak több,\n" +
"mint 4 jelölést! Jelenítse meg a filmek címét névsorban! Kezelje az esetleges holtversenyt!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar9(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT cim FROM filmek where cim like 'The%' order by cim;");
            System.out.println("Készítsen listát azokról a filmcímekről, melyek a The szóval kezdődnek! Rendezze a listát\n" +
"névsorba!\n");
            while(rs.next()){
                System.out.print(rs.getString("cim")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }
    
    public void getOscar10(){
    Connection conn = connect.connectDatabase();
        try{
            stmt = conn.createStatement();
            rs=stmt.executeQuery("SELECT * FROM filmek where ev>1960 and jelol=dij order by jelol desc, ev desc;");
            System.out.println("Listázza ki azoknak a filmeknek minden adatát, melyek 1960 után készültek és minden\n" +
"jelölést megnyertek! Rendezze a listát a jelölés és ev szerint csökkenő sorrendbe!\n");
            while(rs.next()){
                System.out.println(rs.getString("azon")+"\t");
                System.out.print(rs.getString("cim")+"\t");
                System.out.print(rs.getInt("ev")+"\t");
                System.out.print(rs.getInt("dij")+"\t");
                System.out.print(rs.getInt("jelol")+"\n");
            }
            
            stmt.close();
            connect.cloceConnect();

        } catch (SQLException ex) {
            System.out.println("Hiba a lekérdezés során!");
        }
    }

}
