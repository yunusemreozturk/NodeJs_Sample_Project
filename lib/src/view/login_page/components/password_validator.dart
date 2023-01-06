class PasswordValidator {
  final int maxPasswordLength;
  final int minPasswordLength;

  PasswordValidator({this.maxPasswordLength = 20, this.minPasswordLength = 5})
      : assert(minPasswordLength >= 1);

  String? validate(String? value) {
    if (value != null) {
      if (value == '' || value == ' ') {
        return 'Enter password';
      } else if (value.length > maxPasswordLength) {
        return 'Too long';
      } else if (value.length < minPasswordLength) {
        return 'Too short';
      } else {
        return null;
      }
    } else {
      return 'Empty Value';
    }
  }
}
