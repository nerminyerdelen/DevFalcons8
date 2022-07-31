public class SOQL_Assignment {
    public static void soql_WhereClause(){
        list<contact> istContact = [select lastname from Contact Where lastName Like '%A%'];
        System.debug(istContact);
        System.debug('size of istContact = ' + istContact.size());

    }

    public static void soql_Method(){

        list<contact> istContact = [select lastname, phone from Contact];
        for(Contact eachContact : istContact){
            string contLastName =eachContact.LastName;
            string contPhone = eachContact.phone;
            System.debug('Last name is '+ contLastName +' ' + 'phone number is ' + contPhone);
        }
    }


}
