import 'package:vred/common/enums/cashback_enum.dart';

class CashbackModel {
  final CashbackEnum cashbackType;
  final String itemValue;
  final String voucherExpiry; // date of expiry based on which we show has expired or not
  final String voucherCode; // only for voucher
  CashbackModel({
    required this.cashbackType,
    required this.itemValue,
    required this.voucherExpiry,
    required this.voucherCode,
  });

  // todo: add more fields such as details, desc, expriry company etc
}
