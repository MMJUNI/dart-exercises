import 'dart:io';

void main() {
  final currentYear = DateTime.now().year;
  int birthYear;

  while (true) {
    stdout.write('سال تولد (میلادی، مثلا 2005): ');
    final value = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (value != null && value > 1900 && value <= currentYear) {
      birthYear = value;
      break;
    }
    print('لطفاً یک سال معتبر وارد کنید.');
  }

  final age = currentYear - birthYear;
  print('سن شما: $age سال');
}
