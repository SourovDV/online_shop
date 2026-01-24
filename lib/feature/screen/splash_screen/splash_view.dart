import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/app_assets_path.dart';
import 'package:online_shop/app/l10n/app_config.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_controller.dart';
import 'package:online_shop/l10n/app_localizations.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

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
              Text(AppLocalizations.of(context)!.version),
              Text(AppConfig.version),
              SizedBox(width: 10.w,),
              CircularProgressIndicator(),
              SizedBox(height: 20.h,),

            ],
          )
        ],
      )),
    );
  }
}
