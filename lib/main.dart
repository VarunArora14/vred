import 'package:flutter/material.dart';
import 'package:vred/common/widgets/shadow_button.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/features/widgets/cashback_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CashbackView(
            value: 20,
          ),
          CashbackView(
            value: 70,
          ),
          CashbackView(
            value: 14,
          ),
          CashbackView(
            value: 69,
          ),
          CashbackView(
            value: 5,
          ),
        ],
      )),
    );
  }
}
