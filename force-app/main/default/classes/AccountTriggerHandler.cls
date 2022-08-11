public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, 
                                         List<account> accTriggerOld,
                                         Map<id, account> accTriggerNewMap,
                                         Map<id, account> accTriggerOldMap) {
     for (Account eachAcc : accTriggerNew) {
         //when inserted
         boolean updateDesc = false;
         //in insert oldMap is NULL so. If OLDMAP is NULL then INSERT.
         if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
             updateDesc = true;
         }
         //when updated. If OLDMAP is NOT NULL then UPDATE
         if(accTriggerOldMap != null){
             map<id, account> triggerOldMap = accTriggerOldMap;
             Account oldAccount = triggerOldMap.get(eachAcc.Id);
             Account newAccount = eachAcc;
             if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
                 updateDesc = true;
             }
         }
         if(updateDesc){
             eachAcc.Description = 'Account is now active. Enjoy!!!!!';
         }
        }
    }

    public static void updateVIPForAllContacts( List<Account> accTriggerNew,
                                                List<Account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
            set<id> setAccIds = new set<id>();
            for(account eachAcc : accTriggerNew){
                account oldAccount = accTriggerOldMap.get(eachAcc.id);

                if(eachAcc.VIP__c != oldAccount.vip__c){
                    setAccIds.add(eachAcc.Id);


                }
            }
        if(!setAccIds.isEmpty()){
            List<contact> listContacts = [select id,name,vip__c, accountid from contact where accountid in :setAccIds];
            if(!listContacts.isEmpty()){
            for (contact eachContact : listContacts){
                account newAccountRecord = accTriggerNewMap.get(eachContact.accountid);
                eachContact.VIP__c = newAccountRecord.VIP__c;
            }
            update listContacts;
           }

        }    
                                                
    }
 
}
 
 
