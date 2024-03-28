class DataGenerator {
  static List<int> generateRandomNumbers(int count) {
    List<int> numbers = [];
    for (int i = 0; i < count; i++) {
      numbers.add(i);
    }
    return numbers;
  }

  static String generateRandomString(int length) {
    String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    String result = '';
    for (int i = 0; i < length; i++) {
      result += chars[i % chars.length];
    }
    return result;
  }
}
