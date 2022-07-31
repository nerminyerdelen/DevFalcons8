public class LoopAssignment {
   
    integer factorialValue = 1;
    public integer foorloops(integer n){

        for (integer i = 1 ; i<=n ; i++){

            factorialValue = factorialValue*i ;
        }
        return factorialValue ;

    }   
    public integer doWhile(integer n){

       factorialValue = 1;
       integer i= 1;
        while (i<=n) {
            factorialValue = factorialValue*i;  i++;
            
        }
        return factorialValue ;

    }  
}

