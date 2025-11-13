public class AddStudentDummyRecord
{
    public static void addStudents()
    {
        Map<String, Id> collegeNameID = new Map<String,Id>();

        for(College__c col: [Select Id, Name from College__c where Name like 'Dummy College%'])
        {
            collegeNameID.put(col.Name, col.Id);
        }

        List<Student__c> newStudents = new List<Student__c>();

        for(Integer i = 0; i<10 ; i++)
        {
            Student__c std = new Student__c();
            std.Name = 'Dummy Student'+' '+(i+1);

            String collegeName = 'Dummy College'+' '+(i+1);
            std.College_Name__c = collegeNameID.get(collegeName);

            std.Email__c = 'student@gmail'+(i+1)+'.com';
            newStudents.add(std);
        }
        insert newStudents;
    }
}