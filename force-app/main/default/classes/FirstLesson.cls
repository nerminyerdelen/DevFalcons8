public class FirstLesson {
    public void fullName(){
        string firstName = 'Burak';
        string lastName = 'Berk';

        string fullName = firstName + ' ' + lastName;
        system.debug('Classın içindeki metot çalışıyor..');
        system.debug(fullName);
    }
    public void stringMetotlar(){
        String s = 'hello maximillian';
        String s2 = s.capitalize();
        system.debug('Capitalize metodu ' + s2);

        String myString1 = 'abcde';
        String myString2 = 'abcd';
        Boolean result = myString1.contains(myString2);
        system.debug('contains metodu ' +result);

        String s1 = '   Hello! Ali  ';
        String trimmed = s1.trim();
        system.debug('trim metodu ' + trimmed);
    }
    Public void dateMethods(){
        Datetime myDateTime = Datetime.newInstance(1960, 2, 17);
        Datetime newDateTime = myDateTime.addDays(2);
        system.debug('1960-2-19 = '+ newDateTime);
        integer gun = newDateTime.day();
        system.debug('gün 19 olmalı => ' + gun);
        integer yil = newDateTime.year();
        system.debug('yıl 1960 olmalı => ' + yil);
    }
    public void betweenMethod(){
        Date startDate = Date.newInstance(2007, 1, 1);
        Date endDate = Date.newInstance(2008, 1, 30);
        Integer numberDays = startDate.daysBetween(endDate);
        system.debug('aradaki gün sayısı = '+ numberDays);
    }
}