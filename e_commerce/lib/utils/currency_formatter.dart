import 'package:intl/intl.dart';

class CurrencyFormatter {
  static final _ugxFormatter = NumberFormat.currency(
    locale: 'en_UG',  // English (Uganda)
    symbol: 'UGX',    // Prefix symbol
    decimalDigits: 0, // No cents in UGX
  );

  static String format(num amount) {
    return _ugxFormatter.format(amount);
  }
}
