import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/models/cashback_model.dart';

List<CashbackModel> tempList = [
  CashbackModel(
      cashbackType: CashbackEnum.voucher,
      itemValue: "2000",
      voucherExpiry: "12/21/2023",
      voucherCode: "ABC-DEFG-HIJK-LMNO"),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
  CashbackModel(cashbackType: CashbackEnum.cash, itemValue: "20", voucherExpiry: "", voucherCode: ""),
];
