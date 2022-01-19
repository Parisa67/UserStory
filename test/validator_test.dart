import 'package:test/test.dart';
import 'package:userstory/utils/validator.dart';

void main() {
  testEmail();
  testPassword();
}

void testEmail() {
  test('Valid Email Test', () {
    var result = Validator.validateEmail('parisa@example.com');
    expect(result, true);
  });

  test('Empty Email Test', () {
    var result = Validator.validateEmail('');
    expect(result, false);
  });

  test('Invalid Email Test', () {
    var result = Validator.validateEmail('parisa.com');
    expect(result, false);
  });
}

void testPassword() {
  test('Valid Password Test', () {
    var result = Validator.validatePassword('Parisa Mohammadi');
    expect(result, true);
  });

  test('Empty Password Test', () {
    var result = Validator.validatePassword('');
    expect(result, false);
  });

  test('Invalid Password Test', () {
    var result = Validator.validatePassword('Parisa2');
    expect(result, false);
  });
}
