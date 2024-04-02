@isTest
private class TestVerifyDate {
    @isTest
    static void testCheckDates() {
        Date date1 = Date.newInstance(2020, 1, 1);
        Date within30Days = Date.newInstance(2020, 1, 2);
        Date notWithin30Days = Date.newInstance(2020, 2, 1);

        Test.startTest();
        Date shouldBeWithin30Days = Verifydate.CheckDates(date1, within30Days);
        Date shouldBeEndOfMonth = Verifydate.CheckDates(date1, notWithin30Days);
        Test.stopTest();

        Assert.areEqual(shouldBeWithin30Days, within30Days, 'Should be within 30 days');
        Assert.areEqual(shouldBeEndOfMonth, Date.newInstance(2020, 1, 31), 'Should be end of month');
    }
}
