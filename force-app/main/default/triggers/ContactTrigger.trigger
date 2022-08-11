trigger ContactTrigger on Contact (before insert, before update, after insert,after update, after delete, after undelete){
  
    //Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir //Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
  Set<Id> accIds = new Set<Id>();

  if (trigger.isAfter) {
    if (trigger.isInsert || trigger.isUndelete) {
        for (contact cn : trigger.new) {
            if (cn.accountId != null) {
                accIds.add(cn.accountId);
            }
        }
    }

    if (trigger.isUpdate) {
        for (contact cn : trigger.new) {
            if (cn.accountId != trigger.oldmap.get(cn.id).accountId) {
                accIds.add(cn.accountId);
                accIds.add(trigger.oldmap.get(cn.id).accountId);
            }
        }
    }

    if (trigger.isDelete) {
        for (contact cn : trigger.old) {
            if (cn.AccountId != null) {
                accIds.add(cn.AccountId);
            }
        }
    }

    if (!accIds.isEmpty()) {
        List<Account> accList = [ select id, name, 	Number_Of_Contacts__c, (select id from contacts) from Account where id in : accIds ];
        for (Account acc : accList) {
            acc.Number_Of_Contacts__c = acc.contacts.size();
            }
             update accList;
        }    
    }



  
  
  
  
  
  
    /* if(trigger.isBefore && trigger.isUpdate){
        for(contact con : trigger.new ){
            if(trigger.oldMap.get(con.id).LeadSource == 'Partner Referral'){
                con.addError('Bu contacti degistiremezsin');
            }// error mesaji butun sayfanin altinda gorulur


        }

    }
    if(trigger.isBefore && trigger.isUpdate){
        for(contact cn : trigger.new){
            if(cn.LeadSource != trigger.oldMap.get(cn.id).LeadSource){
                cn.LeadSource.addError('Bu recordun lead Source ni degistiremezsin..');

            }// error mesaji lead source kutusunun altinda gorulur
        }
    } */




   /* if (Trigger.isBefore && trigger.isUpdate){

        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.newMap, Trigger.Old, Trigger.oldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    } 
    if(trigger.isAfter){
        set<id> accountIds = new set<id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for(contact eachContact : trigger.new){
                if(eachContact.AccountId != null){
                    accountids.add(eachContact.AccountId);

                }
            

            }
        }
           if(trigger.isUpdate || trigger.isDelete){
            for(Contact eachContact : trigger.old){
                if(eachContact.AccountId != null){
                    accountids.add(eachContact.AccountId);
                }
            }
           }
           ContactTriggerHandler.updateAccountRollUpField(accountIds); 
        
    }*/
    
    /*if(trigger.isBefore){
        System.debug('Before Trigger');
        if(trigger.isInsert){
            System.debug('Before Insert Trigger');
        }
        if (trigger.isUpdate){
            System.debug('Before Update trigger');
        }

    }
    if(Trigger.isAfter){
        System.debug('After Trigger');
        if(trigger.isInsert){
            System.debug('After Insert Trigger');

        }
        if(trigger.isUpdate){
            System.debug('After Update Trigger');

        }
    }
    */
} 




//trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
   /* if(trigger.isAfter){
        system.debug('contact trigger tetiklendi..');
        System.debug('trigger New => ' + trigger.new);
        //list<Contact> triggerNewList = trigger.new;
        System.debug('işlem yapılan record sayısı => ' + trigger.new.size());
        for(contact c : trigger.new){
            System.debug(c.lastName);
            system.debug(c.id);
        }
    }*/
    
//}bunu koy