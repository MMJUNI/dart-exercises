import 'dart:io';

void main() {
  final List<double> scores = [];

  print('نمرات را یکی‌یکی وارد کنید (عدد بین 0 تا 20).');
  print('برای پایان، یک خط خالی بفرستید (فقط Enter).\n');

  while (true) {
    stdout.write('نمره ${scores.length + 1}: ');
    final text = (stdin.readLineSync()?.trim() ?? '').replaceAll(',', '.');

    if (text.isEmpty) break;

    final score = double.tryParse(text);
    if (score == null || score < 0 || score > 20) {
      print('لطفاً عددی بین 0 تا 20 وارد کنید.');
      continue;
    }
    scores.add(score);
  }

  if (scores.isEmpty) {
    print('\nهیچ نمره‌ای وارد نشد.');
    return;
  }

  double sum = 0;
  int countAboveTen = 0;

  for (final score in scores) {
    sum += score;
    if (score > 10) {
      countAboveTen++;
    }
  }

  final double average = sum / scores.length;

  print('\n--- نتیجه ---');
  print('تعداد نمرات: ${scores.length}');
  print('میانگین: ${average.toStringAsFixed(2)}');
  print('تعداد افراد با نمره بیشتر از 10: $countAboveTen');
}
