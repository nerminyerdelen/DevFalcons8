public class TurkishLesson5 {
   public static void createAccount(string nm){

      account acc = new account();
      acc.name = nm;
      System.debug(nm + ' adinda bir account create edildi..');
      insert acc;

       list<Contact> conList = new list<Contact>();
      for(integer i = 1; i<=5; i++){
        contact cn = new contact();
        cn.FirstName = acc.name;
        cn.LastName = 'Contact ' + i;
        cn.accountId = acc.Id;
        conList.add(cn);
      }
      insert conList;
   }
}
