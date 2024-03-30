class UserManager {
  static bool isLoggedIn = false;
  static String username = '';

  static void login(String name) {
    isLoggedIn = true;
    username = name;
    print('$username logged in successfully');
  }

  static void logout() {
    isLoggedIn = false;
    username = '';
    print('User logged out');
  }
}
