import 'package:flutter/material.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/constants/temp_cashback.dart';
import 'package:vred/screens/cashback_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        // pass custom behavior to all scrollable widgets and child cannot be null so pass empty container
        // if empty child
        return ScrollConfiguration(behavior: MyBehavior(), child: child ?? Container());
      },
      home: const HomePage(),
    );
  }
}

// custom scroll behaviour to disable glow in entire app
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: CashbackScreen(
          cashbackList: tempList,
        ),
      ),
    );
  }
}
