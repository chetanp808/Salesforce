public class MycontactController {
 
    public Contact newContact { get; set; }
    public MycontactController(){
    newContact = new Contact();
    }
    public PageReference saveContact(){
      insert newContact;
      return null;
    }
}