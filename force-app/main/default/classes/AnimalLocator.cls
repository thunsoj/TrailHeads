public without sharing class AnimalLocator {
    public static String getAnimalNameById(Integer animalId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String animalName = null;

        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            // First, access the 'animal' object
            Map<String, Object> animalDetails = (Map<String, Object>) results.get('animal');
            // Then, access the 'name' field within the 'animal' object
            animalName = (String) animalDetails.get('name'); // Note: Ensure this key matches the JSON structure
        }
        return animalName;
    }
}
