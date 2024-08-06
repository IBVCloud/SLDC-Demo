public with sharing class Utils {
    public static String generateUUID() {
        return String.valueOf(Crypto.getRandomLong());
    }
}
