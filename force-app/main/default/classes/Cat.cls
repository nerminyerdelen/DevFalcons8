public class Cat {
    public string name = '';
    public string color = '';

    public Cat() {
       System.debug('constructor called.');

    }
    public Cat(string nm, string clr){
        name = nm;
        color = clr;
        sleeping();
        
    }
    public void sleeping(){
        System.debug(name + ' is sleeping');

    }
}
