import 'dart:io';

void main() {
  // رمز عبور ذخیره‌شده در متغیر
  const String correctPassword = '1234';

  String input = '';

  while (input != correctPassword) {
    stdout.write('رمز عبور را وارد کنید: ');
    input = stdin.readLineSync()?.trim() ?? '';

    if (input != correctPassword) {
      print('رمز نادرست است');
    }
  }

  print('رمز درست است');
}
