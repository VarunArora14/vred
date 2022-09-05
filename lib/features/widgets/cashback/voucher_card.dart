import 'package:flutter/material.dart';

class VoucherCard extends StatefulWidget {
  final String itemValue;
  final String voucherExpiry; // calculate the has expired or not based on this
  final String voucherCode; // unique for each voucher
  const VoucherCard({Key? key, required this.itemValue, required this.voucherCode, required this.voucherExpiry})
      : super(key: key);

  @override
  State<VoucherCard> createState() => _VoucherCardState();
}

class _VoucherCardState extends State<VoucherCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 5, 10, 20),
      height: size.height * 0.2,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.orange[900],
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            color: Colors.white38,
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(-4, -4), // changes position of shadow
          ),
          BoxShadow(
            blurStyle: BlurStyle.normal,
            color: Colors.black87,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(4, 4), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: Divider(
                  color: Colors.grey[350],
                  thickness: 1,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'special voucher',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// show network image in circle avatar of this => https://media.glassdoor.com/sqll/1321544/ajio-squarelogo-1533010680533.png