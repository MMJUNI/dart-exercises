import 'dart:io';

void main() {
  final List<String> items = [];

  print('اقلام خرید را یکی‌یکی وارد کنید.');
  print('برای پایان، یک خط خالی بفرستید (فقط Enter).\n');

  while (true) {
    stdout.write('کالای ${items.length + 1}: ');
    final item = stdin.readLineSync()?.trim() ?? '';
    if (item.isEmpty) break;
    items.add(item);
  }

  if (items.isEmpty) {
    print('\nلیست خرید خالی است.');
    return;
  }

  print('\n--- لیست خرید ---');
  for (int i = 0; i < items.length; i++) {
    print('${i + 1}. ${items[i]}');
  }
  print('تعداد کل: ${items.length}');
}
