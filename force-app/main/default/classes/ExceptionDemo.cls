public class ExceptionDemo {
	
    public void getException(integer a, integer b){
        try{
            integer res = a/b;
            Demo d;
            //d.sayHello();
            List<String> name = new List<String>();
            System.debug(name.get(5));
            System.debug('Result is : '+res);
        }catch(MathException m){
			System.debug('Sorry you can not devide by zero');            
        }catch(NullPointerException n){
            System.debug('Please do not call a method with null');
        }catch(exception e){
            System.debug('Server is busy please try after some times');
        }finally{
        System.debug('run');
        }
    }
}