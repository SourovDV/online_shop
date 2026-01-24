import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/app_assets_path.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Column(
        children: [
          Spacer(),
          Image.asset(ImagePath.splashImage),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("version 5"),
              SizedBox(width: 10.w,),
              CircularProgressIndicator()
            ],
          )
        ],
      )),
    );
  }
}
