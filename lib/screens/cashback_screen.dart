import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/features/widgets/cashback/cashback_card.dart';
import 'package:vred/features/widgets/cashback/voucher_card.dart';
import 'package:vred/models/cashback_model.dart';

class CashbackScreen extends StatefulWidget {
  final List<CashbackModel> cashbackList;
  final bool isVoucherScreen;
  const CashbackScreen({Key? key, required this.cashbackList, required this.isVoucherScreen}) : super(key: key);

  @override
  State<CashbackScreen> createState() => _CashbackScreenState();
}

class _CashbackScreenState extends State<CashbackScreen> {
  // format this date to dd-MM-yyyy
  String voucherFormat(String voucherExpiry) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    final DateTime voucherTime = inputFormat.parse(voucherExpiry);
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(voucherTime);
    return formatted;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: scaffoldColor,
          elevation: 0,
          title: const Text(
            'Rewards History',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: scaffoldColor,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator(); // disallow scroll glow top and bottom
            return true;
          },
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: ListView.builder(
                shrinkWrap: true, // inside list does not scroll else error
                reverse: true, // show newest list item at top
                physics: const NeverScrollableScrollPhysics(), // disable scroll on listview items
                itemCount: widget.cashbackList.length,
                itemBuilder: (BuildContext context, int index) {
                  var temp = widget.cashbackList[index];
                  debugPrint(temp.voucherExpiry);
                  return (temp.cashbackType == CashbackEnum.cash && widget.isVoucherScreen == false)
                      ? Padding(
                          padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                          child: CashbackCard(value: temp.itemValue),
                        )
                      : (temp.cashbackType == CashbackEnum.voucher)
                          ? Padding(
                              padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                              child: VoucherCard(
                                  itemValue: temp.itemValue,
                                  voucherCode: temp.voucherCode,
                                  voucherExpiry: voucherFormat(temp.voucherExpiry),
                                  // if current time less the voucherExpire then isExpired is false
                                  isExpired: DateTime.parse(temp.voucherExpiry).isBefore(DateTime.now())
                                  // DateTime.parse(temp.voucherExpiry).isBefore(DateTime.now()),
                                  ),
                            )
                          : Container();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
