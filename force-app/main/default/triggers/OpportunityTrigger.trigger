trigger OpportunityTrigger on Opportunity (before update, after update, before insert, after insert){
   
    ///soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver. 
    if (trigger.isBefore && trigger.isUpdate) {
        for (opportunity op : trigger.new) {
           
           /* if(trigger.oldMap.get(op.id).StageName == 'ClosedWon'{
                op.addError('degistiremezsiniz');
            })*/
           
           /* if (op.stageName != trigger.oldMap.get(op.id).stageName) { //eger update edildiyse
                if (op.stageName == 'Closed Lost') {
                    op.Description = 'Çok üzgünüz..';
                }
                if (op.stageName == 'Closed Won') {
                    op.Description = 'Yaşasın..';
                }
                if (op.stageName == 'Prospecting') {
                    op.addError('süreci başa döndüremezsiniz..');
                    //op.stageName.addError('süreci başa döndüremezsiniz..');
                }
            }
        }
    }*/
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   /* if (trigger.isBefore)
    System.debug('Before update trigger');
    if (trigger.isAfter)
    System.debug('After update trigger');
*/

}  