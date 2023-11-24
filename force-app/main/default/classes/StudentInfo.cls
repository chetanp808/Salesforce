public class StudentInfo {
	@auraEnabled
    public static void insertStudentDetails(String snm, String sfnm, String smail, String sfee){
        Student__c sd =new Student__c();
        sd.name = snm;
        sd.student_father_name__c = sfnm;
        sd.Student_Email__c = smail;
        sd.Student_Fees__c = Integer.valueOf(sfee);
        insert sd;
    }
}