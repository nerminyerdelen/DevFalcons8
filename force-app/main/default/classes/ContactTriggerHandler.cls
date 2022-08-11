public with sharing class ContactTriggerHandler {
  public static void contactUpdateValidation1(List<contact> conTriggerNew,
                                              Map<id, contact> conTriggerNewMap,
                                              List<Contact> conTriggerOld,
                                              Map<id, contact> conTriggerOldMap ){

        for(contact eachContact : conTriggerNew){   //conTriggerNew parameter 
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if(oldContact.LeadSource == 'Partner Referall'){
                eachContact.addError('Cannot update Partner referral contact');
            }
        }
    }

    public static void contactUpdateValidation2(List<contact> conTriggerNew,
                                                Map<id, contact> conTriggerNewMap,
                                                List<Contact> conTriggerOld,
                                                Map<id, contact> conTriggerOldMap ){

             for(contact eachContact : conTriggerNew){   //conTriggerNew parameter 
                id contactId = eachContact.id;
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if(eachContact.LeadSource != oldContact.LeadSource){
                  eachContact.leadsource.addError('CANNOT UPDATE LEAD SOURCE> PLEASE!!!');
    
   
                
                
                }                  
            }    
                
}
 public static void updateAccountRollUpField(set<id> accountIds){
    List<account> listAccounts = [select id, number_of_contacts__c, (select id from Contacts) from account where id in :accountIds];

    for(account eachAccount : listAccounts){
        List<contact> accContacts = eachAccount.contacts;

        integer noOfContacts = accContacts.size();
        eachAccount.number_of_contact__c = noOfcontacts;
        
    }
    update listAccounts;
 }
}