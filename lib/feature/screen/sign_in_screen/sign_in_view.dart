import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop/app/app_assets_path.dart';
import 'package:online_shop/app/l10n/app_color.dart';
import 'package:online_shop/core/extensions/context_extensions.dart';

class SignInView extends StatelessWidget {
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
            SizedBox(height: 100.h,),
            Image.asset(ImagePath.splashImage),
            Text(context.localization.welcomeBack,style:theme.titleLarge),
            Text(context.localization.pleaseEnterYourEmailAddress,style: TextStyle(color: Colors.grey.shade700),),
            SizedBox(height: 10.h,),
            Form(child: TextFormField(
              decoration:InputDecoration(
                hintText: context.localization.emailAddress,
              ),
            )),
            SizedBox(height: 10.h,),
            ElevatedButton(
                onPressed: (){}, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(context.localization.next,style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            )),


          ],
        ),
      ),
    );
  }
}
