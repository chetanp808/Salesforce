public class AdditionPolymorphismwithType {
	public void sum(integer a, integer b){
        integer res = a+b;
        System.debug(res);
    }
    
    public void sum(String a, String b){
        String res = a+b;
        System.debug(res);
    }
}