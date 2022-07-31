map<string, integer> markObtainInMaths = new map<string, integer>();

markObtainInMaths.put('0111CE112', 40);
markObtainInMaths.put('0111CE102', 19);
markObtainInMaths.put('0111CE100', 33);
markObtainInMaths.put('0111CE098', 40);
markObtainInMaths.put('0111CE015', 22);


System.debug(markObtainInMaths);

set<string> studentRollNumber = markObtainInMaths.keySet();
System.debug(studentRollNumber);

list<integer> mark = markObtainInMaths.values();
System.debug(mark);

set<string> uniqueRollNumberSet = markObtainInMaths.keySet();
for(string each : uniqueRollNumberSet){
   System.debug('Student roll number is ' + each);
    
}
list<integer> marksObtainList = markObtainInMaths.values();
for(integer markObtains : marksObtainList){
System.debug(markObtains);
}
