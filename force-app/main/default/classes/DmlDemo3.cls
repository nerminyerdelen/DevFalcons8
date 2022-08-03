public class DmlDemo3 {
    public static void dmlMultipleRecordUpdate_right(){
        List<Account> updateAccounts = new List<Account>();
        
        List<Account> listAccount = [select name from account];

        for(Account eachAccount : listAccount){
            eachAccount.Name += 'via B.0';
            updateAccounts.add(eachAccount);
        }

        if (! updateAccounts.isEmpty()){
            update updateAccounts;

        
        }
        



        



    }
}
