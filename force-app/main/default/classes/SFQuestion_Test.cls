@istest
private class SFQuestion_Test {
    @istest
    private static void testQuestionController(){
        Survey_Question__c sq= new Survey_Question__c();
        sq.Name =  'Test';
        sq.Question__c = 'Question';
        sq.Choices__c = 'Test1\nTest2';
        sq.Type__c = 'Single Select--Vertical';
        sq.Required__c = True;
        sq.OrderNumber__c = 2;

        SFQuestion q = new SFQuestion(sq);
        System.assertEquals(q.singleOptions.size(), 2);
    }
}