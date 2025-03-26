import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: 'VND').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (phoneNumber.length == 10) {
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11 && phoneNumber.startsWith('84')) {
      return '+84 ${phoneNumber.substring(2, 5)} ${phoneNumber.substring(5, 8)} ${phoneNumber.substring(8)}';
    }

    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength == 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
