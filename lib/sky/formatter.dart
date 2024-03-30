class DateFormatter {
  static String formatDate(DateTime date) {
    return "${date.year}-${_addLeadingZero(date.month)}-${_addLeadingZero(date.day)}";
  }

  static String formatTime(DateTime time) {
    return "${_addLeadingZero(time.hour)}:${_addLeadingZero(time.minute)}:${_addLeadingZero(time.second)}";
  }

  static String _addLeadingZero(int number) {
    return number < 10 ? '0$number' : '$number';
  }
}
