@IsTest
private class UtilsTest {
    @IsTest
    static void testGetRandomString() {
        Test.startTest();
        String randomString = Utils.generateUUID();
        Test.stopTest();

        Assert.isNotNull(randomString);
    }
}
