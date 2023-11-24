@isTest
private class Demo_test{
    
    @testSetup
    static void testDataSetup(){
        Account act = new Account();
        act.name = 'Test data';
        insert act;
    }
    
    public testMethod static void doTest(){
        Test.startTest();
        Demo d = new Demo();
        d.sayHello();
        integer res = d.add(10,10);
        system.assertEquals(20,res,'Result is not as expected');
        Account act = [select id from account where name='Test data'];
        d.getAccount(act);
        
        User u = [select id from user where username = 'bldecse.chetanp@gmail.com'];
        System.runas(u){
        Merchandise__c mer = new Merchandise__c();
        mer.name='my test';
        insert mer;
        Merchandise__c m = [select id, name from Merchandise__c where name='my test'];
        delete m;
        }
        Test.stopTest();
    }
}