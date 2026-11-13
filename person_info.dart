import 'dart:io';

String readText(String label) {
  stdout.write('$label: ');
  return stdin.readLineSync()?.trim() ?? '';
}

int readAge() {
  while (true) {
    stdout.write('سن: ');
    final age = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (age != null && age > 0) return age;
    print('لطفاً یک عدد معتبر وارد کنید.');
  }
}

void main() {
  final firstName = readText('نام');
  final lastName = readText('نام خانوادگی');
  final phone = readText('شماره');
  final age = readAge();

  print('\n--- مشخصات فرد ---');
  print('نام: $firstName');
  print('نام خانوادگی: $lastName');
  print('شماره: $phone');
  print('سن: $age');
}
