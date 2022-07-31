public class SetDemo {
    public static void citySet(){
        Set<string> cities = new  set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        System.debug(cities);

    }
    public static set<integer> setFromList(List<integer> intList){
        set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
        
    }
}
