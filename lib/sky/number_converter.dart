class NumberConverter {
  static String intToBinary(int number) {
    return number.toRadixString(2);
  }

  static String intToHex(int number) {
    return number.toRadixString(16);
  }

  static int binaryToInt(String binary) {
    return int.parse(binary, radix: 2);
  }

  static int hexToInt(String hex) {
    return int.parse(hex, radix: 16);
  }
}
