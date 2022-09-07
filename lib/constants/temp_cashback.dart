import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/common/widgets/credit_card_widget.dart';
import 'package:vred/models/cashback_model.dart';
import 'package:flutter/material.dart';
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

List<Widget> displayList(BuildContext context, String firstName) {
  final size = MediaQuery.of(context).size;
  return [
    Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('welcome, $firstName',
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'explore and claim\nthe membership perks reserved for you',
            style: TextStyle(color: Colors.white38, fontSize: 12),
          )
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "amex",
          cardNumber: "1483 29XX XXXX 8890",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "3433.56"),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "hdfc",
          cardNumber: "5589 83XX XXXX 9161",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "0"),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
      child: const CreditCardWidget(
          cardCompany: "icici",
          cardNumber: "3493 72XX XXXX 1022",
          firstName: "VARUN",
          lastName: "ARORA",
          overdueValue: "1024.32"),
    ),
  ];
}
