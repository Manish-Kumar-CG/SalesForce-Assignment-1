public class AddCollegeDummyRecord
{
    public static void addColleges()
    {
        List<College__c> newColleges = new List<College__c>();
        for(Integer i = 0; i<10 ; i++)
        {
            College__c col = new College__c();
            col.Name = 'Dummy College'+' '+(i+1);
            col.City__c =  'City'+' '+(i+1);
            col.Email__c = 'dummy@gmail'+(i+1)+'.com';
            newColleges.add(col);
        }
        insert newColleges;
    }
}