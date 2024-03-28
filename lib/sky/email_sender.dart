class EmailSender {
  static void sendEmail(String recipient, String subject, String body) {
    print('Sending email to: $recipient');
    print('Subject: $subject');
    print('Body: $body');
  }

  static void attachFile(String filePath) {
    print('Attaching file: $filePath');
  }
}
