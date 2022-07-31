public class FullNameClass {
   public void fullName(){
    string firstName = 'Ali';
    string lastName = 'Mermer';
    string fullName = firstName + ' ' + lastName;
    system.debug(fullName);

    string justName = fullName.remove('Ali');
    system.debug(justName);


   }
   public void metot1(){
    string myString1 = 'abcd';
    string myString2 = 'ABCD';
    string myString3 = myString1.toUpperCase();
    system.debug(myString3);
   }
}
