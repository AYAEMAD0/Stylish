class ValidatorHelper {
  static String? validateName(String? text) {
    if (text == null || text
        .trim()
        .isEmpty) {
      return "Name is required";
    }
    return null;
  }

  static String? validateEmail(String? text) {
    if (text == null || text
        .trim()
        .isEmpty) {
      return "Email is required";
    }
    return null;
  }

  static String? validatePassword(String? text) {
    if (text == null || text
        .trim()
        .isEmpty) {
      return "Password is required";
    }
    return null;
  }
  
  static String? validateMobile(String? text) {
    if (text == null || text
        .trim()
        .isEmpty) {
      return "Mobile number is required";
    }
    return null;
  }
}