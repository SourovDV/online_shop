import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/app_assets_path.dart';
import 'package:online_shop/app/l10n/app_color.dart';
import 'package:online_shop/core/extensions/context_extensions.dart';
import 'package:online_shop/feature/screen/sign_in_screen/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Image.asset(ImagePath.splashImage),
            Text(context.localization.welcomeBack, style: theme.titleLarge),
            Text(
              context.localization.pleaseEnterYourEmailAddress,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            SizedBox(height: 10.h),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: context.localization.emailAddress,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: context.localization.password,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.localization.next,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.localization.doNotHaveAndAccount),
                GestureDetector(
                  onTap: ()=>controller.moveToSignUpScreen(),
                    child: Text(context.localization.signUp,style: TextStyle(fontSize: 18,color: AppColor.greenColor,fontWeight: FontWeight.bold),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
