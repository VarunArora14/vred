import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView.builder(
          itemCount: widget.cashbackList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container();
          },
        ),
      ),
    );
  }
}

// return VoucherView() if voucher else cashbackView() based on enum values