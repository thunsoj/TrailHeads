@isTest
private class TestRestrictContactByName {
    @isTest
    static void testCreateContactWithInvalidName() {
        Contact contact = new Contact();
        contact.FirstName = 'Test';
        contact.LastName = 'INVALIDNAME';
        Test.startTest();
        Database.SaveResult result = Database.insert(contact, false);
        Test.stopTest();

        Assert.isFalse(result.isSuccess(), 'Contact with invalid name should not be created');
    }
}
