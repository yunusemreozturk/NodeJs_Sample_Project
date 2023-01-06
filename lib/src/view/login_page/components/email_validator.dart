import 'package:get/get.dart';

class EmailValidator {
  final int maxEmailLength;
  final int minEmailLength;

  EmailValidator({this.maxEmailLength = 10, this.minEmailLength = 1})
      : assert(minEmailLength > 0),
        assert(maxEmailLength < 50);

  String? validate(String? value) {
    if (value != null) {
      if (value.contains(' ')) {
        return 'Contains space';
      } else if (value == '' || value == ' ') {
        return 'Enter email';
      } else if (value.split('@').first.length >= maxEmailLength) {
        return 'Too long';
      } else if (value.split('@').first.length <= minEmailLength) {
        return 'Too short';
      } else if (!value.isEmail) {
        return 'This not email';
      } else {
        return null;
      }
    } else {
      return 'Empty Value';
    }
  }
}
