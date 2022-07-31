//clasname.variablename
SampleClass.SampleStaticString = 'This is a static variable ';
system.debug(SampleClass.SampleStaticString );

//className.methodName()
SampleClass.SampleStaticMethod();

//non static class
SampleClass s = new SampleClass();
s.SampleString = 'this is non static variable . Still enjoy.';
system.debug(s.SampleString);
//s.SampleStaticString = 'canwe set value like this?';

system.debug(SampleClass.SampleStaticString);


s.SampleMethod();
