import 'package:intl/intl.dart';

class EFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit Indian phone number format: +91 12345 67890

    if (phoneNumber.length == 10) {
      return '+91 ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
    } else if (phoneNumber.length == 11) {
      return '+91 ${phoneNumber.substring(1, 6)} ${phoneNumber.substring(6)}';
    }

    // Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }
}

