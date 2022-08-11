trigger Casetrigger on Case (before insert, after insert, before update, after update, before delete, after delete) {
    if(Trigger.isInsert){
       System.debug('before insert case trigger called');
       System.debug('trigger size is ==>>> ' + trigger.size);

    }
    if(Trigger.isUpdate){
        System.debug('before update case trigger called');
        System.debug('trigger size is ==>>> ' + trigger.size);
        CaseTriggerHandler.countRecordsUpdate += trigger.size;
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('# of times trigger executed = ' + CaseTriggerHandler.countTriggerExecution);
        System.debug('# of total records uptaded = ' + CaseTriggerHandler.countRecordsUpdate);
    }

   /* if (trigger.isBefore){
        system.debug('isBefore ' + trigger.isBefore);
        if(trigger.isInsert){
            System.debug('Before insert Trigger ' + trigger.isInsert);
        }
        if(trigger.isupDate){
            system.debug('before update trigger ' + trigger.isUpdate);

        }
        if(trigger.isDelete){
            system.debug('Before Delete ' + trigger.isDelete);
        }

    }
    if (trigger.isAfter){
        system.debug('isAfter ' + trigger.isAfter);
        if(trigger.isInsert){
            System.debug('After Insert ' + trigger.isInsert);

        }
        if(trigger.isUpdate){
            System.debug('After Update ' + trigger.isUpdate);

        }
        if(trigger.isDelete){
            System.debug('After Delete ' + trigger.isDelete);

        }

    
    }*/

}