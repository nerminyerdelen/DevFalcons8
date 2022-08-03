TurkishLesson5.createAccount('Apex Account2');
TurkishLesson5.createAccount('Deneme');

list<contact> conList = [select id, firstName, lastName, account.name from Contact order by createdDate desc limit 5];
system.debug(conList);