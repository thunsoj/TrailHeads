@isTest
public without sharing class AnimalLocatorMock implements HttpCalloutMock {
    public HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal": {"name": "fluffy bunny"}}');
        response.setStatusCode(200);
        return response;
    }
}
