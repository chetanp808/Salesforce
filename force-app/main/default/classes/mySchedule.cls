public class mySchedule implements schedulable{
    public void execute(SchedulableContext sc){
        MyBatch mb = new MyBatch();
        database.executeBatch(mb);
    }
}