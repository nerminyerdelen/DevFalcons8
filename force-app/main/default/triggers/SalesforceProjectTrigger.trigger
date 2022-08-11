trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {

   if(trigger.isAfter && trigger.isInsert){
       //call handler method here
    SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);


   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    /* System.debug('=== Trigger START===');
    List<Salesforce_Project__c> newsfProject = trigger.new;
    if (trigger.isAfter) {
        System.debug('After trigger trigger.new = '+ trigger.new);// is List<sObject>
        System.debug('size of trigger.new = ' + newsfProject.size() );  

    }
*/
}