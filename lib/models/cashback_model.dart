import 'package:vred/common/enums/cashback_enum.dart';

class CashbackModel {
  final CashbackEnum cashbackType;
  final String cashbackValue;
  final String voucherExpiry; // only for voucher
  final String voucherCode; // only for voucher
  final bool hasExpired;
  CashbackModel({
    required this.cashbackType,
    required this.cashbackValue,
    required this.voucherExpiry,
    required this.voucherCode,
    required this.hasExpired,
  });

  // todo: add more fields such as details, desc, company etc
}
