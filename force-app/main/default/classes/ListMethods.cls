public class ListMethods {
    public void getListMethods(){
        
        List<String> name = new List<String>();
        
        name.add('Amit');   // add the elements to list
        name.add('raj');
        name.add('kaka');
        name.add('dinesh');
        
        System.debug('List Elements are : '+name);
        
        name.add(0,'Harish');   //Adds at perticular position/index
        
        System.debug('Size of List is : '+name.size());    // to get size of list
        
		System.debug('is the list is empty : '+name.isEmpty());  // to check list is empty or not returns boolean

		System.debug('is Harish contains in list : '+name.contains('Harish'));   // returns true if element present
		
		System.debug('After removing index 0 element from list : '+name);     // removes element at perticular index

		System.debug('Get the element of index 0 : '+name.get(0));      // to get the element of particular index
		
        name.set(0,'Abhishek');
        System.debug('Set abhishek at index 0 by updating : '+name);
        
        List<String> name1 = new List<String>();
        name.add('Amit'); 
        System.debug('If list1 is equal to list2 : '+name.equals(name1));    //returns boolean
        
        name1.addAll(name);
        System.debug('After add all elments of name o name1 : '+name1);
        
        name1.clear();
        System.debug('after clearing from name1 : '+name1);
        
        
        
        
    }
}