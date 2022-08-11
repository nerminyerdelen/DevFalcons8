trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
  /* system.debug('====Trigger START====');
    if(trigger.isBefore){
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('====Trigger END====');
   
    //1 Account create edildikten sonra. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
  /* if (trigger.isInsert && trigger.isAfter) {
    list<account> accList = trigger.new;
    list<Contact> conList = new list<Contact>();
    integer counter = 0;
    for (account acc : accList) {
        for (Integer i = 1; i <= 7; i++){
            contact cn = new contact();
            cn.firstName = acc.name;
            cn.lastName = 'Contact ' + i;
            cn.accountId = acc.Id;
            conList.add(cn);
            counter++;
        }*/
}
   /* System.debug('Cretate edilen Contact sayisi => ' + counter);
    System.debug(conList.size() + ' sayida Contactler create edildi.. size ile');
    insert conList;
}
   */
   
   
   
   
   /*if (trigger.isInsert && trigger.isBefore) {
        system.debug('********** Before Insert start***********');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('********** Before Insert End***********');
        System.debug('============================================');
    }

    if (trigger.isInsert && trigger.isAfter) {
        System.debug('============================================');
        system.debug('********** After Insert start***********');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('********** After Insert End***********');
        System.debug('============================================');
    }

    if (trigger.isUpdate && trigger.isBefore) {
        System.debug('============================================');
        system.debug('********** Before Update start***********');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('********** Before Update End***********');
        System.debug('============================================');
    }

    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('============================================');
        system.debug('********** After Update start***********');
        System.debug('trigger new = ' + trigger.new);
        System.debug('trigger old = ' + trigger.old);
        System.debug('trigger new Map = ' + trigger.newMap);
        System.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('********** After Update End***********');
        System.debug('============================================');
    }*/
        
    







   /* system.debug('====Trigger START====');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }*/
    
    //system.debug('====Trigger END====');
    
     /*  system.debug('====Trigger START====');
    if (trigger.isBefore) {
        for (Account eachAcc : trigger.new) {
            //when inserted
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            //when updated
            if(Trigger.isUpdate){
                map<id, account> triggerOldMap = trigger.oldMap;
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
    
    system.debug('====Trigger END===='); */
    







    /*if(trigger.isBefore){
        for(Account eachAcc : trigger.new){

            //when inserted
           if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                 eachAcc.Description = 'Account is now active.Enjoy!';
            }
            //when updated
            if(trigger.isUpdated){

                map<id, account> triggerNewMap = trigger.newMap;

                Account oldAccount = triggerOldMap.get(eachAcc.Id);
                string oldAccountActive = oldAccount.Active__c;

                Account newAccount = eachAcc;
                if(newAccount.Active__c== 'Yes'&& newAccount.Active__c != oldAccount.Active__c){
                    eachAcc.Description = 'Account is now active.Enjoy!';
                }

                


            }

    
        }    
    }
      system.debug('====Trigger END====');*/
   

    
    /*if(trigger.isAfter && trigger.isUpdate){
        integer countWebSiteUpdate = 0;

        /*for(Account eachRecord : trigger.new){
            if(eachRecord.Website != trigger.oldMap.get(eachRecord.Id).Website){
               system.debug('Acc Name : ' + eachRecord.Name + ', website is changed TO ===>>> ' + eachRecord.Website);
            }
       }*/
 /*
        map<id, account> trgOldMap = trigger.oldMap;
        map<id, account> trgNewMap = trigger.newMap;

        set<id> accIdSet = trgNewMap.keySet();

        for(Id eachId: accIdSet){
            account newAcc = trgnewmap.get(eachId);
            string newWebSite = newAcc.Website;

            account oldAcc = trgOldmap.get(eachId);
            string oldWebSite = oldAcc.Website;

            if(newWebSite != oldWebSite){
                system.debug('Acc Name : ' + newAcc.Name + ', website is changed TO ===>>> ' + newWebsite);
                countWebSiteUpdate++;
            }
        }
        system.debug('count of website updated accounts => ' + countwebsiteupdate);
    }
    
    system.debug('====Trigger END====')*/
    





   /* if(trigger.isAfter && trigger.isUpdate){
        map<id, account> trgOldMap = trigger.oldMap;
        map<id, account> trgNewMap = trigger.newMap; 
        set<id> accIdSet = trgNewMap.keyset();
        for(Id eachId: accIdSet){
            system.debug('account id is ...' + eachId);


            account newAcc = trgOldMap.get(eachId);
            system.debug('new acc name => ' +newacc.Name);

            account oldAcc = trgOldMap.get(eachId);
            system.debug('old acc name = ' + oldAcc.Name);


        }

    }



    system.debug('====Trigger END====');*/

    /*if(trigger.isBefore && trigger.isInsert){
        system.debug('====BEFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); //null
        system.debug('New Map ==> ' + trgNewMap);  //null
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('====AFTER INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); // null
        system.debug('New Map ==> ' + trgNewMap);  //yes
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('====BEFORE UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap);  //yes
        system.debug('New Map ==> ' + trgNewMap);  //yes
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('====AFTER UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap);  //yes
        system.debug('New Map ==> ' + trgNewMap);  //yes
    }
    
    system.debug('====Trigger END====');  */
    
   /* if (trigger.isAfter && trigger.isUpdate){
        list<account> oldAccounts = trigger.old;
        list<account> newAccoutns = trigger.new;
        for(Account oldAcc: oldAccounts){
            system.debug('Old account id: ' + oldAcc.id + ', Old account name ' + oldAcc.Name);

        }
        for(Account newAcc: newAccoutns){
            system.debug('New account id : ' + 'new account name ' + newAcc.Name);

        }
    }


      system.debug('====Trigger END====');*/



   /* if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.old = ' + trigger.old);

    }
    if('trigger.isBefore && trigger.isUpdate'){
        system.debug('before updatetrigger trigger.old = ' +trigger.old);

    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger trigger.old = ' + trigger.old);
    }



    system.debug('====Trigger END====');*/
    






   /* if (trigger.isBefore && trigger.isInsert){
        System.debug('before trigger trigger.new = ' + trigger.new);

    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug(' after trigger trigger.new = ' + trigger.new);

    }




    System.debug('==Trigger END==');*/

   /* List<account> newAccounts = trigger.new;

    if(trigger.isAfter){
        System.debug('after trigger trigger.new = ' + newAccounts);
        System.debug('size of trigger.new = ' + newAccounts.size());

        for(account eachAcc: newAccounts){
            System.debug('account id is  ' +eachAcc.id + ', each account name is ' + eachAcc.name );

        }

    }
    System.debug('==Trigger END==');



    
    /*System.debug('===Trigger START ===');
    

    if(trigger.isAfter){
        System.debug('after trigger trigger.new = ' + trigger.new);
    }
    system.debug('===Trigger END ===');
    
    
    /*
    
    system.debug('====Trigger START====');
    ////INSERT
    if( trigger.isBefore && trigger.isInsert){
        system.debug('before insert trigger called');


    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug('After Insert trigger called');
    }

    ////UPDATE
    if( trigger.isBefore && trigger.isUpdate){
        system.debug('before Update trigger called');


    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('After Update trigger called');
    }
    System.debug('=====Trigger END');  */


   /* List<account> newAccounts = trigger.new;
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());
        for(account eachAcc : newAccounts){
            System.debug('account id is ' +eachacc.id + ',each account name is ' + eachAcc.name);
        }
    }
   // system.debug('====Trigger END====');
    /*
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //INSERT
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After Insert trigger called.');
    }
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('Before Insert trigger called.');
    }

    //UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After Update trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('Before Update trigger called.');
    }
    
    
    */
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }*/


  
