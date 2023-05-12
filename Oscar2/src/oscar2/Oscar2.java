
package oscar2;

import java.util.Scanner;

public class Oscar2 {
    public static void main(String[] args) {
        Statements stm=new Statements();
        Scanner scan = new Scanner(System.in);
        Boolean bool= true;
        while(bool){
            menuScreen();
            String choose= scan.nextLine();
            switch(choose){
                case "0": bool=false;continue;
                case "1": stm.getOscar1();break;
                case "2": stm.getOscar2();break;
                case "3": stm.getOscar3();break;
                case "4": stm.getOscar4();break;
                case "5": stm.getOscar5();break;
                case "6": stm.getOscar6();break;
                case "7": stm.getOscar7();break;
                case "8": stm.getOscar8();break;
                case "9": stm.getOscar9();break;
                case "10": stm.getOscar10();break;
            }
            
            }
    }
    public static void menuScreen(){
        System.out.println("\nKérem válasszon a menüből!");
        System.out.println("0:  Kilépés");
        System.out.println("1:  Feladat");
        System.out.println("2:  Feladat");
        System.out.println("3:  Feladat");
        System.out.println("4:  Feladat");
        System.out.println("5:  Feladat");
        System.out.println("6:  Feladat");
        System.out.println("7:  Feladat");
        System.out.println("8:  Feladat");
        System.out.println("9:  Feladat");
        System.out.println("10: Feladat");
    }
    
}
