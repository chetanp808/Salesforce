public class AccountsWithOpportunity {
	
	public void getAllrecords(){
        List<Account> ca = [select id, name,(select id, name from opportunities) from account];
        for (Account a : ca){
            System.debug('Id : '+a.id+' '+' '+' Account Name : '+a.name);
        }
    }		 
}