import 'package:jeemo_pay/shared/size.dart';
import 'package:jeemo_pay/shared/sizeConfig.dart';
import 'package:jeemo_pay/shared/text_style.dart';
import 'package:jeemo_pay/ui/features/login/login_screen.dart';
import 'package:jeemo_pay/ui/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:lottie/lottie.dart';

class SignUpCompletedScreen extends StatelessWidget {
  const SignUpCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthOf(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/animation_llim3alq.json",
                repeat: false),
            vertical30,
            Text(
              "Registration Successful!",
              style: txStyle27Bold,
            ),
            vertical5,
            Text(
              "Your account has been created. You can now proceed to Login.",
              textAlign: TextAlign.center,
              style: txStyle14,
            ),
            SizedBox(
              height: SizeConfig.heightOf(10),
            ),
            CustomButton(
                onTap: () {
                  Get.offAll(LoginScreen());
                },
                label: "Ok")
          ],
        ),
      ),
    );
  }
}
