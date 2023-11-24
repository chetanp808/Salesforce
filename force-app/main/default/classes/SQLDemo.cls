public class SQLDemo {

    public void getAllRecords(){
        List<Account> act = [select id, name from account];
        
        for (Account a : act){
            System.debug('Account id : '+a.id+' '+'Account Name : '+a.name);
        }
    }
    
}