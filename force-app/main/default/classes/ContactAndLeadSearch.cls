public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String firstOrLastName) {
        List<List<sObject>> searchList = [
            FIND :firstOrLastName
            IN ALL FIELDS
            RETURNING Lead(FirstName, Lastname), Contact(FirstName, LastName)
        ];
        return searchList;
    }
}
