public  class StringDemoClass {
    public void stringMethod1(){
        //method variable
        string sessionDescription = 'learning string method in apex language ';
        system.debug('sessionDescription = ' + sessionDescription );

        // 1. length           variable name       method of string
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of sessionDescription is = ' + lengthOfStr);

        // 2.capitalize convert to capital
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);

        // 3.contains 'apex'    variablename       method    string parameter
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex? ' + containsApex);
         //3; true

        // 3.1 contains 'salesforce'
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce? ' + containsSalesforce);
        //3.1;false(string does not contain 'salesforce')

        //3.2 contains 'Apex'
        //when it comes to string , apex is case sensitive
       boolean containsApex2 = sessionDescription.contains('APEX');
       system.debug('contains APEX? '+ containsApex2);
       //3.2; false


       //3.3 contains Ignore Case 'APEX'
       // 'APEX','APeX','Apex','apeX'
       // whwn it comes to string , apex is case sensitive
       boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
       system.debug('contains APEX? ' + containsApex3);
       //3.3;true









    }




}
