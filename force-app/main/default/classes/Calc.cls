public class Calc {
	
    public void refer(){
       	Addition a = new Addition();
        a.doSum();
        
        Substraction s = new Substraction();
        s.doSubs();
        
        Multiplication m = new Multiplication();
        m.doMul();
        
        Division d = new Division();
        d.doDiv();
    }
    
}