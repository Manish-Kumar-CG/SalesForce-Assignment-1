public class StudentWithMissingEmail
{
    public static void addMissingEmailStudent()
    {
        List<Student__c> MissingEmailStudents = new List<Student__c>();
        MissingEmailStudents = [Select Id, Name FROM Student__c WHERE Email__c = null];

        for(Student__c std: MissingEmailStudents)
        {
            std.Email__c = 'student@gmail.com';
        }

    }
}