public class custommeta {
    public void metadata(){
        update_trigger__mdt mdt = update_trigger__mdt.getInstance('manage');
        System.debug(mdt);
    }
}