public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        Account acc = new account();
        //set field values
        acc.Name = 'SoftInnovas';
       // acc.Active__c = 'yes'; //if needed


        //Insert
        insert acc;
        System.debug(acc);

    }
    public static void dmlInsertDemo_stndObj(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.project_Name__c = 'Teach DML to falcons';
        sp.description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);
        system.debug('Hello');
    }

  
}
