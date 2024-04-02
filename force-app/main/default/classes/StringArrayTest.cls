public class StringArrayTest {
    public static List<String> generateStringArray(Integer numOfStrings) {
        List<String> stringList = new List<String>();
        String prefix = 'Test';
        for (Integer i = 0; i < numOfStrings; i++) {
            stringList.add(prefix + ' ' + i);
        }
        return stringList;
    }
}
