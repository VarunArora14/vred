import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/models/cashback_model.dart';
import 'dart:core';

List<CashbackModel> tempList = [
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "200", voucherExpiry: "", voucherCode: ""),
  CashbackModel(
    cashbackType: CashbackEnum.voucher,
    itemValue: "2000",
    voucherExpiry: "2023-12-21", // this formatting is important yyyy-mm-dd
    voucherCode: "ABC-DEFG-HIJK-LMNO",
  ),
  // based on datetime evaluate the isExpired
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "2", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "200", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "45", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "18", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "47", voucherExpiry: "", voucherCode: ""),
];
