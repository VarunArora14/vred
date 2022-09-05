import 'package:flutter/material.dart';
import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/features/widgets/cashback/cashback_card.dart';
import 'package:vred/features/widgets/cashback/voucher_card.dart';
import 'package:vred/models/cashback_model.dart';

class CashbackScreen extends StatefulWidget {
  final List<CashbackModel> cashbackList;
  const CashbackScreen({Key? key, required this.cashbackList}) : super(key: key);

  @override
  State<CashbackScreen> createState() => _CashbackScreenState();
}

class _CashbackScreenState extends State<CashbackScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator(); // disallow scroll glow top and bottom
            return true;
          },
          child: SingleChildScrollView(
            child: Center(
              child: ListView.builder(
                shrinkWrap: true, // inside list does not scroll else error
                physics: const NeverScrollableScrollPhysics(), // disable scroll on listview items
                itemCount: widget.cashbackList.length,
                itemBuilder: (BuildContext context, int index) {
                  var temp = widget.cashbackList[index];

                  return Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      temp.cashbackType == CashbackEnum.cash
                          ? CashbackCard(value: temp.itemValue)
                          : VoucherCard(
                              itemValue: temp.itemValue,
                              voucherCode: temp.voucherCode,
                              voucherExpiry: temp.voucherExpiry),
                      SizedBox(
                        height: size.height * 0.025,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// return VoucherView() if voucher else cashbackView() based on enum values