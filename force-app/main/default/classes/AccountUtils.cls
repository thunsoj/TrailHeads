public with sharing class AccountUtils {
    public static List<Account> accountsByState(String st) {
        return [SELECT id, Name FROM Account WHERE billingState = :st];
    }
}
