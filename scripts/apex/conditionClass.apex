conditionClassAssignment cda =new conditionClassAssignment();

string outputMonth1 = cda.ifClassMethod(1);
system.debug('outputMonth1 is ' + outputMonth1);


string outputMonth2 = cda.ifClassMethod(12);
system.debug('outputMonth2 is  ' + outputMonth2);

string nameOfMonth1 = cda.caseMethod('January');
system.debug('nameOfMonth1  is January ' + nameOfMonth1);

string nameOfMonth2 = cda.caseMethod('December');
system.debug('nameOfMonth2 is December' + nameOfMonth2);
