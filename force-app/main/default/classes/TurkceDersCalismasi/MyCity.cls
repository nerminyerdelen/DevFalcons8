public class MyCity {
    public string cityInformation(){
        string myCity1 = 'Colts';
        string myCity2 = 'Pacers';
        string sum = 'Indiananin iki buyuk takimi: ' + myCity1 + ' ve ' + myCity2;
        return sum ;

    }  
    public void stringMethod(){
        string var1 = 'I am a salesforce Developer ';
        System.debug('var1 : '+ var1);
        boolean var2 = var1.contains('force');
        System.debug('var2 : ' + var2);
        integer var3 = var1.length();
        System.debug('var3 : ' + var3);
        string var4 = var1.toUpperCase();
        System.debug('var4 : '+ var4);
    } 
    public void dateMethod(){
        Date todayDate = Date.newInstance(2022, 7, 19);
        System.debug('today date is ' + todayDate);

    }
    public void dateMethod1(){
        Datetime dt1 = Datetime.newInstance(2022,7,19,20,30,10);
        System.debug('dt1 is '+ dt1);

        Datetime add50Hours = dt1.addHours(50);
        System.debug('add 50 hours ' + add50Hours);

    }
    

}
