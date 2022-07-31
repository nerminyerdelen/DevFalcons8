public class String_Assignment {
    public void StringMethod(){
        String Localstring = 'Thanks for the sesion on the string';
        system.debug('Localstring  = ' + Localstring);
         
        Integer lengthOfLocalstring = Localstring.length();
        system.debug('The length of the LocalString = ' + lengthOfLocalstring);

        String LocalstringInCaps =  Localstring.toUpperCase();
        system.debug('In Caps = ' + LocalstringInCaps);

        Boolean containsSession1 = Localstring.contains('session');
        system.debug('contains session? = ' + containsSession1);

        Boolean containsSession2 = Localstring.contains('sessions');
        system.debug('contains sessions? = '+ containsSession2);

        Boolean containsSession3 = Localstring.containsIgnoreCase('SESSION');
        system.debug('contains SESSION ? = ' + containsSession3);
    

        
    }
}
