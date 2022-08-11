
list<account> listAcc = new list<Account>();
account acc = new account();
acc.name ='Account Demo';
listAcc.add(acc);

account acc2 = new account();
acc2.name = 'Account Test';
listAcc.add(acc2);

insert listAcc;






/*account acc = new account();
acc.name = 'Trigger Map Test';
insert acc;

acc.name = 'Trigger New Map Test';
update acc;*/