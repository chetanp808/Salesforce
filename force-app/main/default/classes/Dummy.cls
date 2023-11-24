public class Dummy {

}

/*
______________________________________________

Integration
______________________________________________
1: Expose your invoice object with restful web services

@RestResource(urlMapping='/MyInvoice/*')
global class RestInvoice {
    @httpGet
    global static List<invoice__c> getDetails(){
        List<invoice__c> inv = [select id,Name,Invoice_Desc__c,Invoice_Status__c,
                                Maximum_Sellitem_Price__c,Minimum_Sellitem_Price__c,
                                Total_Sellitm_Price__c,Total_Items_Sold__c from invoice__c];
        return inv;
    }
}

--------------------------------------------------------

2 : Create a Invoice record using restful web services-single record at a time

@RestResource(urlMapping='/MyInvoice/*')
global class RestInvoice {
    @httpPost
    global static void createInvoice(String invdesc,String invstatus){
        invoice__c i = new invoice__c();
        i.Invoice_Desc__c = invdesc;
        i.Invoice_Status__c = invstatus;
      insert i;
    }
}

-----------------------------------------------------------

3 :Delete an Invoice record using restful web services- single record at a time.


@RestResource(urlMapping='/MyInvoice/*')
global class RestInvoice {

        @httpDelete
    	global static void delInvoice(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String reqid = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        
        invoice__c inv = [select id from invoice__c where id=:reqid];
        delete inv;
        
    } 
}

-----------------------------------------------------------------

4 : Create Invoice records using restful web services-using list

@RestResource(urlMapping='/MultpleInvoiceInsert/*')
global class RestInvoiceMultiple {
	@httpPost
    global static void createInvoice(List<String> invoiceDesc){
        List<Invoice__c> invoices=new List<Invoice__c>();
        for(String descs:invoiceDesc){
            Invoice__c newInvoice=new Invoice__c();
            newInvoice.Invoice_Desc__c=descs;
            invoices.add(newInvoice);
        }
        insert invoices;
    }
}


{"invoiceDesc":["invoice 1",
                 "invoice 2",
                 "invoice 3"
                ]
}

OR 

@RestResource(urlMapping='/MultpleInvoiceInsert/*')
global class RestInvoiceMultiple {
	
	@httpPost
    global static void createInvoice(List<invoice__c> InvoiceDesc){
        insert invoiceDesc;
    }
}


{"InvoiceDesc":[{"Invoice_desc__c":"inv001"},
                {"Invoice_desc__c":"inv002"},
                {"Invoice_desc__c":"inv03"}
]
}

_________________________________________________________

Apex Batch

_________________________________________________________

1 : Write a program for the batchable interface where you need to update the 
    complete records of the invoice with today's date Object.

public class Invoicebatch implements Database.Batchable<sObject> {
	 public Database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id,Invoice_Date__c from invoice__c';
        return Database.getqueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<invoice__c> inv){
        for(invoice__c i : inv){
            i.Invoice_Date__c=system.today();
        }
        update inv;
    }
    
     public void finish(Database.BatchableContext bc){
         
    }
}



Invoicebatch ib = new Invoicebatch();
database.executebatch(ib);

----------------------------------------------------------

2 : Schedule Above batch so than it will run on a twice in a day.

public class InvoiceBatchShdule implements schedulable{
    public void execute(SchedulableContext sc){
        MyBatch mb = new MyBatch();
        database.executeBatch(mb);
    }
}

String sch = '0 0 0-23/12 *  * ?';
InvoiceBatchShdule ib = new InvoiceBatchShdule();
system.schedule('Update date',sch,ib);


___________________________________________________________

Apex Batch Schedule

___________________________________________________________

1 : above question

___________________________________________________________

Test Classes

___________________________________________________________

1 : simple demo test class

public class Demo {
  
    public void sayHello(){
        
        System.debug('Hello Apex..');
        
    }
    
}

@isTest
private class Demo_test{
    public testMethod static void doTest(){
        Demo d = new Demo();
        d.sayHello();
    }
}

--------------------------------------------
2 : Test for private methods

public class Demo {
	
    public void sayHello(){
        
        System.debug('Hello Apex..');  
    }
    
    @testVisible
    private void add(integer a, integer b){
        integer res = a+b;
        System.debug('Result is : '+res);
    }
    
}


@isTest
private class Demo_test{
    public testMethod static void doTest(){
        Demo d = new Demo();
        d.sayHello();
        d.add(10,10);
    }
}


-------------------------------------------

3 : Assert Equal

public class Demo {
	
    public void sayHello(){
        
        System.debug('Hello Apex..');  
    }
    
    @testVisible
    private integer add(integer a, integer b){
        integer res = a+b;
        System.debug('Result is : '+res);
        return res;
    }
    
}


@isTest
private class Demo_test{
    public testMethod static void doTest(){
        Demo d = new Demo();
        d.sayHello();
        integer res = d.add(0,10);
        system.assertEquals(20,res,'Result is not as expected');
    }
}

------------------------------------------------------------

4 : seeAllData=true

@isTest(seeAllData=true)
private class Demo_test{
    public testMethod static void doTest(){
        Demo d = new Demo();
        d.sayHello();
        integer res = d.add(10,10);
        system.assertEquals(20,res,'Result is not as expected');
        Account act = [select id from account where id='0015h00001VlO7fAAF'];
        d.getAccount(act);
    }
}

public class Demo {
	
    public void sayHello(){
        
        System.debug('Hello Apex..');  
    }
    
    @testVisible
    private integer add(integer a, integer b){
        integer res = a+b;
        System.debug('Result is : '+res);
        return res;
    }
    
    public void getAccount(Account act){
        System.debug(act);
    }
    
}


-----------------------------------------------------

5 : Setup own test data

public class Demo {
    
    public void sayHello(){  
        System.debug('Hello Apex..');  
    }
    
    @testVisible
    private integer add(integer a, integer b){
        integer res = a+b;
        System.debug('Result is : '+res);
        return res;
    }
    
    public void getAccount(Account act){
        System.debug(act);
    }
}



@isTest
private class Demo_test{
    
    @testSetup
    static void testDataSetup(){
        Account act = new Account();
        act.name = 'Test data';
        insert act;
    }
    
    public testMethod static void doTest(){
        Demo d = new Demo();
        d.sayHello();
        integer res = d.add(10,10);
        system.assertEquals(20,res,'Result is not as expected');
        Account act = [select id from account where name='Test data'];
        d.getAccount(act);
    }
}

--------------------------------------------------

6 : Test.startTest; and Test.stopTest


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
        Test.stopTest();
    }
}

-------------------------------------------------

7 : system.runas();


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
        User u = [select id from user where username = 'your_uname@gmail.com'];
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
 
 

public class Demo {
    public void sayHello(){  
        System.debug('Hello Apex..');  
    }
    @testVisible
    private integer add(integer a, integer b){
        integer res = a+b;
        System.debug('Result is : '+res);
        return res;
    }
    public void getAccount(Account act){
        System.debug(act);
    }
}

________________________________________________

SOQL 

*/