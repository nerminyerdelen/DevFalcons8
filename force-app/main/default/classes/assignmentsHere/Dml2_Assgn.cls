public class Dml2_Assgn {
   public static void insert_dml(){
    List<Account> listAccount = new List<Account>();

    Account newRecord1 = new Account();
    newRecord1.Name = 'Nermin' + 'Assignment';
    listAccount.add(newRecord1);

    Account newRecord2 = new Account();
    newRecord2.Name = 'Bera' + 'Assignment';
    listAccount.add(newRecord2);

    Account newRecord3 = new Account();
    newRecord3.Name = 'Asli' + 'Assignment';
    listAccount.add(newRecord3);

    insert listAccount;
    System.debug(listAccount);
    
    }
    public static void uptade_dml(){
        List<Account> updateAcc = new List<Account>();
        List<Account> listAccount =[select name from Account WHERE name LIKE '%Assignment%'];
        for (Account eachAccount : listAccount){
            eachAccount.name += 'uptation';
            updateAcc.add(eachAccount);

        }
        if (!updateAcc.isEmpty()){
            update updateAcc;

        }
    }
}
