public class MapDemo {
    public static string retrieveMonth(integer m){
        string month = ' ';
        map<integer, string> monthMap = new map<integer,string>();
       monthMap.put(1,'January');
       monthMap.put(2,'february');
       monthMap.put(3,'m');
       monthMap.put(4,'a');
       monthMap.put(5,'m');             
       monthMap.put(6,'j');
       monthMap.put(7,'Ju');
       monthMap.put(8,'au');
       monthMap.put(9,'s');
       monthMap.put(10,'o');
       monthMap.put(11,'n');
       monthMap.put(12,'d');

       if(monthMap.containsKey(m)){
        month = monthMap.get(m);

       }else {
        month = 'Month does NOT exist. Please behave !';

       }
      
       return month;


}



}


