public class AllOperation {

    integer a = 10;
    integer b = 10;
    
    public void doAdd(){
        integer res = a+b;
        System.debug('Addition is : '+res);
    }
    
    public void doSub(){
        integer res = a-b;
        System.debug('Substraction is : '+res);
    }
    
    public void doMul(){
        integer res = a*b;
        System.debug('Multiplication is : '+res);
    }
    
    public void doDiv(){
        integer res = a/b;
        System.debug('Division is : '+res);
    }
    
}