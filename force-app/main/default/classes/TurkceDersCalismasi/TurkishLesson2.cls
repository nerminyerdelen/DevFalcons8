public class TurkishLesson2 {
    //1. a ve b iki sayı olsun. a ve b'yi karşılaştırıp büyük, küçük ve eşitlik durumunu bir mesajla yazdıracak bir if else bloğu yazın.
    public static void numberCompaire(integer a, integer b) {
        if (a>b) {
            system.debug('Büyük sayi => ' + a);
        } else if(b>a){
            system.debug('Büyük sayi => ' + b);
        } else {
            system.debug('Bu iki sayi eşittir');
        }
    }

    public static void numberCompaireMath(integer a, integer b) {
        integer bigNumber = Math.max(a,b);
        system.debug('Büyük sayi => ' + bigNumber);
    }


    public static void siparis(string order, integer adet){

        
        integer ucret;

        if (order == 'ekmek'){
            ucret = adet*1;
            System.debug('ekmek odenecek miktar =>' + ucret);

        }else if (order == 'simit'){
            ucret = adet*2;
            System.debug('simit odenecek miktar => ' + ucret);

        }else if (order == 'kek'){
            ucret = adet*3;
            System.debug('kek odenecek miktar => ' + ucret);

        }else {
            System.debug('Boyle bir urun elimizde bulunmamakta..');
        }
    }
    public static integer sum(integer n){
        integer toplam = 0;
        for (integer i = 1; i<= n; i++){
            toplam += i;

        }
        return toplam;
    }

    public static string addString(string word, integer adet){
        string addStr = '';
        for(integer i = 1; i<= adet; i++){
            addStr =addStr +  ' ' + word;

        }
        return addStr;
    }
}
