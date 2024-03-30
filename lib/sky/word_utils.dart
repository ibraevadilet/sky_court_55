class WordUtils {
  static bool isPalindrome(String word) {
    String reversed = word.split('').reversed.join('');
    return word.toLowerCase() == reversed.toLowerCase();
  }

  static String capitalize(String word) {
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }
}
