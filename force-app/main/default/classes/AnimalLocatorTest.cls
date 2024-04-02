@isTest
private class AnimalLocatorTest {
    @isTest
    static void testGetAnimalNameById() {
        // Setting up the mock response
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());

        // Executing the method under test
        String animalName = AnimalLocator.getAnimalNameById(1);

        // Asserting the animal name returned by the method is as expected
        String expectedAnimalName = 'fluffy bunny'; // The expected name should match your mock's output
        System.assertEquals(expectedAnimalName, animalName, 'The animal name should match the expected value.');
    }
}
