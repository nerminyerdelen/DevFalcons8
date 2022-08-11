public class salesforceProject_Assg {
    public static void salesforceProjectInsert(){
        Salesforce_Project__c sf = new Salesforce_Project__c();
        sf.Project_Name__c = 'Test Task';
        insert sf;
        System.debug('New sf project record ==> ' + sf);

    }
    public static void salesforceprojectupdate() {
        Salesforce_Project__c Sf = [SELECT Project_Name__c 
                                    FROM Salesforce_Project__c  
                                    WHERE  Project_Name__c ='Test Task' 
                                    LIMIT 1];

       Sf.Project_Name__c = 'Testing Task'; 
       update Sf;
       System.debug('Updated ==> ' + Sf);
    }
    
}
