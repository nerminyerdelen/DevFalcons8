TurkishLesson1 tl1 = new TurkishLesson1();
integer a = tl1.metot1('Bugun hava guzel');
system.debug('Textin karakter uzunlugu => '+ a);

integer rkmsys = tl1.metot2(345);
system.debug('Bu sayinin rakam sayisi => ' + rkmsys);


TurkishLesson1 tl2 = new TurkishLesson1();
integer topl = tl2.sum(4,5);
integer carpm = tl2.carp(4,5);
integer gTplm = topl + carpm;
system.debug('iki sonucun toplami ' + gTplm);
