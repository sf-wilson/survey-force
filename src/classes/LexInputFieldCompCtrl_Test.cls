@isTest
private class LexInputFieldCompCtrl_Test {
    @isTest
    private static void doTest(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'Name';

        System.assertEquals(false, linf.isReadOnly);
        System.assertEquals(true, linf.isInput);
        System.assertEquals(false, linf.isTextarea);
        System.assertEquals(false, linf.isMultiPicklist);
        System.assertEquals(false, linf.isPicklist);
        System.assertEquals(false, linf.isCheckbox);
        System.assertEquals(false, linf.isDatetime);
        System.assertEquals(false, linf.isLookup);
        System.assertEquals(false, linf.isDatetime);
        System.assertEquals('Survey__c', linf.objectName);
    }
    @isTest
    private static void doTest_getFieldDescribe(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        
        System.assertEquals(null, linf.getFieldDescribe());
        System.assertEquals('', linf.objectName);
    }
    @isTest
    private static void doTest_isLookup(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'OwnerId'; 

        System.assertEquals(true, linf.isLookup);
    }
    @isTest
    private static void doTest_textArea(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'thankYouText__c';

        System.assertEquals(true, linf.isTextarea);
    }
    @isTest
    private static void doTest_notIsInput(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'CreatedDate';

        System.assertNotEquals(true, linf.isInput);
    }
    @isTest
    private static void doTest_isCheckbox(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'Hide_Survey_Name__c';

        System.assertEquals(true, linf.isCheckbox);
    }
    @isTest
    private static void doTest_isDatetime(){
        LexInputFieldCompCtrl linf = new LexInputFieldCompCtrl();
        linf.inputObject = (sObject)new Survey__c();
        linf.fieldName = 'CreatedDate';

        System.assertEquals(true, linf.isDatetime);
    }
}