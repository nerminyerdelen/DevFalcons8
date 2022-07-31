public class MathPractice {
    public decimal practiceOne(decimal a,decimal b){
        return a+b+a+b;

    }

    public decimal practiceTwo(Decimal kg, Decimal m){
        
             
    return  kg/(m*m);

    }
    public decimal practiceThree(decimal x){
        decimal bonus ;
        if (x<= 0 ){
            System.debug('Hatali bir deger girdiniz.');

        }else if (x>0&& x<= 49){
            System.debug('Bonus kazanamadiniz.');

        }else if (x>=50 && x<= 199){
            System.debug('$10 Bonus kazandiniz.');

        }else if ( x<=200 && x<=499){
            System.debug('$30 Bonus kazandiniz.');

        }else {
            System.debug('$50 bonus kazandiniz.');
        }
         return bonus;
    }     
}
