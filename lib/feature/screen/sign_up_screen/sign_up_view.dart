import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/app_assets_path.dart';
import 'package:online_shop/app/l10n/app_color.dart';
import 'package:online_shop/core/extensions/context_extensions.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImagePath.splashImage),
              Text(context.localization.welcomeBack, style: theme.titleLarge),
              Text(
                context.localization.pleaseEnterYourEmailAddress,
                style: TextStyle(color: Colors.grey.shade700),
              ),
              SizedBox(height: 10.h),
              Form(
                key: controller.controllerKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.emailAddress
                      ),
                      controller: controller.emailController,
                    ),
                    SizedBox(height: 5.h,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.firstName,
                      ),
                      controller: controller.firstNameController,
                    ),
                    SizedBox(height: 5.h,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.lastName,
                      ),
                      controller: controller.lastNameController,
                    ),
                    SizedBox(height: 5.h,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.phone,
                      ),
                      controller: controller.phoneController,
                    ),
                    SizedBox(height: 5.h,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: context.localization.password
                      ),
                      controller: controller.passwordController,
                    ),
                    SizedBox(height: 5.h,),
                    TextFormField(
                    maxLines: 2,
                      decoration: InputDecoration(
                        hintText: context.localization.deliveryAddress,
                      ),
                      controller: controller.deliveryController,
                    ),
          
                  ],
                ),
              ),
              SizedBox(height: 5.h),
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
                      onTap: ()=>controller.moveToSignInScreen(),
                      child: Text(context.localization.signIn,style: TextStyle(fontSize: 18,color: AppColor.greenColor,fontWeight: FontWeight.bold),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
