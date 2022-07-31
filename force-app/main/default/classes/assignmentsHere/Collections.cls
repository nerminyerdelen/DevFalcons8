public class Collections {
    public static string listAssignment(integer x){
        List<string> listMonth = new  List<string>();
        string outputMonth;
        listMonth.add('January');
        listMonth.add('February');
        listMonth.add('March');
        listMonth.add('April');
        listMonth.add('May');
        listMonth.add('June');
        listMonth.add('July');
        listMonth.add('August');
        listMonth.add('September');
        listMonth.add('October');
        listMonth.add('November');
        listMonth.add('December');
      
        integer sizeOfList = listMonth.size();
        if (x>0 && x<sizeOfList) {
            outputMonth = listMonth[x-1];

            
        }else {
            outputMonth = 'Not a valid month';

        }
        return outputMonth;
    }    

}
