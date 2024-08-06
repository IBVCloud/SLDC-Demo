public with sharing class Utils {
    /**
     * Generate a random UUID
     *
     * @return String
     */
    public static String generateUUID() {
        return String.valueOf(Crypto.getRandomLong());
    }
}
