public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        Account acc = new account();
        //set field values
        acc.Name = 'SoftInnovas';


        //Insert
        insert acc;
        System.debug(acc);

    }
  
}
