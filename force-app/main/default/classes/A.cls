public class A {
	@future
    public static void a1(){
        system.debug('I am from class a');
        system.enqueueJob(new B());
    }
}