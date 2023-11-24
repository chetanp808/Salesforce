public class CollectionDemo {
	
    public void getNames(){
        List<String> name = new List<String>();
        
        name.add('Amit');
        name.add('Raj');
        name.add('Harish');
        name.add('Kaka');
        name.add('Amit');
        
        System.debug('List items are : '+name);
        
        for (String s : name){
            System.debug('Name : '+s);
        }
        
    }
}