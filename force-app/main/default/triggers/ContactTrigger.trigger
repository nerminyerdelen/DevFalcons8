/*trigger ContactTrigger on Contact (before insert, before update, after insert,after update){
    if(trigger.isBefore){
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
} 
*/
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isAfter){
        system.debug('contact trigger tetiklendi..');
        System.debug('trigger New => ' + trigger.new);
        //list<Contact> triggerNewList = trigger.new;
        System.debug('işlem yapılan record sayısı => ' + trigger.new.size());
        for(contact c : trigger.new){
            System.debug(c.lastName);
            system.debug(c.id);
        }
    }
    
}