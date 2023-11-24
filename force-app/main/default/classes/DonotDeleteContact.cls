public class DonotDeleteContact {
    public static void trapDelete(List<contact> con){
       for(Contact c:con)
        {
            if(c.AccountId!=null)
            {
                c.adderror('not allowed to delete');
            }
        }
    }
}