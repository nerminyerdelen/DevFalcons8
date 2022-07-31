public class DateMarieCurie {
    public void marieAge(){
        Date todayDate = Date.today();
        Date birthDate = Date.newInstance(1867, 11,7);
        Integer diffYear = todayDate.year()-birthDate.year();
        System.debug(diffYear);
        Boolean isleapYear = date.isLeapYear(1867);
        System.debug(isleapYear);
    }

    
}
