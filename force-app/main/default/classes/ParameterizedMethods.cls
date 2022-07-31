public class ParameterizedMethods {
    public class ParameterizedMethods {
        //It will calculate the sum of two number       
        public static void calculate(){
            Integer x = 10;
            Integer y = 20;
            Integer sum = x+y;
    
            System.debug('Sum of two numbers is '+sum);
        }
        public static void calculateWithParam(Integer x1, Integer y){
            System.debug('x '+x1);
            System.debug('y '+y);
            Integer sum = x1+y;
            System.debug('sum   '+sum);
        }
        //I need to calculate sum/multiplication/division/substraction between two numbers
        //
        public static void calculateWithParam(Integer x, Integer y, String operationType){
            System.debug('x '+x);
            System.debug('y '+y);
            System.debug('operationType '+operationType);
            Decimal calculatedValue;
            if(operationType == 'sum'){
                calculatedValue = x+y;
            } else if(operationType == 'multiplication'){
                calculatedValue = x*y;
            } else if(operationType == 'division'){
                calculatedValue = x/y;
            }
            system.debug('calculatedValue   '+calculatedValue);
        }
        
    }
   
}
