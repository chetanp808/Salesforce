public class SOSLDemo {

    public void searchText(){
        List<List<sObject>> searchedText = [find 'gene' in all fields returning account(id,name),contact(id,name)];
        
        List<Account> ac = searchedText[0];
        List<Contact> co = searchedText[1];
        
        if (ac.size()>0){
            for (Account a : ac ){
                System.debug('Id : '+a.id+' '+'Account Name : '+a.name);
            }
        }
        if (co.size()>0){
            for (Contact c : co){
                System.debug('Id : '+c.id+' '+'Account Name : '+c.name);
            }
        }
    } 
}