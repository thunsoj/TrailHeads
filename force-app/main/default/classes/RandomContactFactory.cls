public without sharing class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String commonLastName) {
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact contact = new Contact();
            contact.FirstName = 'Test ' + i;
            contact.LastName = commonLastName;
            contact.Email = 'test' + i + '@test.com';
            contacts.add(contact);
        }
        insert contacts;
        return contacts;
    }
}
