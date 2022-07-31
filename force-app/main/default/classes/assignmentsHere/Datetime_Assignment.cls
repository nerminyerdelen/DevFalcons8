public class Datetime_Assignment {
     public void diffofDate(){
         Date varTomorrowDate = Date.newInstance(2022, 07,14 );
         Date varTodaysDate = Date.newInstance(2022, 07, 13);
         integer diffDate = varTodaysDate.daysBetween(varTomorrowDate);
         system.debug('Tomorow\'s date is ' + varTomorrowDate);
         system.debug('Today\'s date is ' + varTodaysDate);
         system.debug('Difference day is '+ diffDate);

     }

    public void timeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022, 07, 14, 07, 00, 00);
        system.debug('Tomorrow\'s is ' + varTomorrowDatetime);

        Datetime var10daysDateTime = Datetime.newInstanceGmt(2022, 07, 23, 09, 00, 00);
        system.debug('10 days later is ' + var10daysDateTime);

        long varDateTimeLong = 12339874361L;
        Datetime dateTimeLong = Datetime.newInstance(varDateTimeLong);
        system.debug('Long time  is ' +  DateTimeLong);

        Datetime add7days = varTomorrowDatetime.addDays(7);
        system.debug('add 7 more days ' + add7days);

        Datetime add10days = var10daysDateTime.addDays(10);
        system.debug('add 10 more days ' + add10days);

    }
}
