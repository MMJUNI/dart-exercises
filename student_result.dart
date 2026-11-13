import 'dart:io';

String readText(String label) {
  while (true) {
    stdout.write('$label: ');
    final value = stdin.readLineSync()?.trim() ?? '';
    if (value.isNotEmpty) return value;
    print('این بخش نباید خالی باشد.');
  }
}

int readAge() {
  while (true) {
    stdout.write('سن: ');
    final age = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (age != null && age > 0) return age;
    print('لطفاً یک عدد معتبر وارد کنید.');
  }
}

double readGpa() {
  while (true) {
    stdout.write('معدل (بین 0 تا 20): ');
    final text = (stdin.readLineSync()?.trim() ?? '').replaceAll(',', '.');
    final gpa = double.tryParse(text);
    if (gpa != null && gpa >= 0 && gpa <= 20) return gpa;
    print('لطفاً عددی بین 0 تا 20 وارد کنید.');
  }
}

void main() {
  final String name = readText('نام دانش‌آموز');
  final int age = readAge();
  final double gpa = readGpa();

  // معدل 10 و بالاتر یعنی قبول
  final bool passed = gpa >= 10;

  print('\n--- نتیجه ---');
  print('نام: $name');
  print('سن: $age');
  print('معدل: $gpa');
  print(passed ? 'وضعیت: قبول' : 'وضعیت: مردود');
}
