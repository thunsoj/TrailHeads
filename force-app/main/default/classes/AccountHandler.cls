public with sharing class AccountHandler {
    public static void CreateNewOpportunity(List<Account> accts) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opps.add(opp);
        }
        if (opps.size() > 0) {
            insert opps;
        }
    }

    public static Account insertNewAccount(String name) {
        if (String.isEmpty(name)) {
            return null;
        }

        try {
            Account acct = new Account(Name = name, AccountNumber = '12345678');
            insert acct;
            return acct;
        } catch (Exception e) {
            System.debug('A dem exception has occurred: ' + e.getMessage());
            return null;
        }
    }
}
