import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neopop/neopop.dart';
import 'package:vred/common/enums/cashback_enum.dart';
import 'package:vred/common/widgets/shadow_button.dart';
import 'package:vred/constants/colors.dart';
import 'package:vred/constants/temp_cashback.dart';
import 'package:vred/models/cashback_model.dart';
import 'package:vred/screens/cashback_screen.dart';
import 'package:vred/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.to(
                CashbackScreen(
                  cashbackList: tempList,
                  isVoucherScreen: false,
                ),
                transition: Transition.downToUp,
              ),
              child: const ShadowButton(
                height: 60,
                width: 60,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            NeoPopButton(
              color: Colors.white,
              onTapUp: () {
                debugPrint('neopop button tapped');
                tempList.add(
                  CashbackModel(
                    cashbackType: CashbackEnum.voucher,
                    itemValue: "69",
                    voucherExpiry: "2023-11-19",
                    voucherCode: "ABC-ABBA-DABBA-JABBA",
                  ),
                );
                debugPrint(tempList.length.toString());
              },
              child: SizedBox(
                height: 50,
                width: size.width * 0.7,
                child: const Center(
                  child: Text('Click to get cashback'),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            NeoPopButton(
              color: Colors.white,
              onTapUp: () {
                Get.to(const ProfileScreen(), transition: Transition.leftToRight);
              },
              child: SizedBox(
                height: 50,
                width: size.width * 0.7,
                child: const Center(
                  child: Text('Go to Profile'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
