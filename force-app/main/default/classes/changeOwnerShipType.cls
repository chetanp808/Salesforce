public class changeOwnerShipType {
    public static void insertAccount(List<Account> ac){
        for(Account aa:ac){
            if(aa.Industry == 'Education'){
                aa.Ownership = 'Public';
            }
        }
    }
}