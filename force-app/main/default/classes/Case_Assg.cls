public class Case_Assg {
    public static void CaseInsert(){
        Case cs = new Case();
        cs.Origin = 'Web';
        cs.Status = 'New';
        cs.Subject = 'Testcase';

        insert cs;
        System.debug('New Record Insert ==> ' + cs);
    }
    public static void updateCase(){
        Case cs = [select id, Subject from case where Subject like '%Testcase%'];
        cs.Subject = 'Testing case 1';

        update cs;
        System.debug('Updated Case record ==> ' + cs);


    }
    public static void DeleteCase(){
        Case cs = [select id, Subject from case where Subject like '%Testing case 1%'];
        
        delete cs;
        system.debug('Record deleted ==> ' + cs);
    }

        

}
