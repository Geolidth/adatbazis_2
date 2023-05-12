package oscar;
public class Oscar {
    public static void main(String[] args) throws Exception {
        String switcher=null;
        final String path=args[0]; //Első paraméter az elérési út
        final String fileName=args[1]; //Második paraméter a fájlnév
        if(args[2]!=null){switcher=args[2];} //kapcsoló
        try{switcher=args[2];}
        catch(Exception ex){}
        final String dbName="oscar";
        Statements states = new Statements(dbName,path,fileName,switcher);
        states.getOscar();

    }
}
