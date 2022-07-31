public class TurkishLesson1 {
   //parametre olarak string bir deger alan bir metot yazin
   //bu metot gonderilen string degerin karakter uzunlugunu return etsin
   public integer metot1(string text){
    integer uzunluk = text.length();
    return uzunluk;

    
   }
   //parametre olarak integer deger alan bir metot yazin
   //bu metot parametre olarak gonderilen sayinin kac rakamdan olustugunu gostersin
   public integer metot2(integer x){
    string sinteger = string.valueOf(x);
    integer rakamsys = sinteger.length();
    return rakamsys;
   }

   public integer sum(integer a, integer b){
    return a+b;

   }
   public integer carp(integer x, integer y){
    return x*y;

   }

}
