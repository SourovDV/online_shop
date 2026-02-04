import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';
import 'package:online_shop/feature/screen/sign_in_screen/sign_in_bindings.dart';
import 'package:online_shop/feature/screen/sign_in_screen/sign_in_view.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_bindings.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_view.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_bindings.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_view.dart';

class AppRoutes{
  static final initialPage=AppPages.splash;

  static final List<GetPage> routes =[
    GetPage(name:AppPages.splash, page:()=>SplashView(),binding:SplashBindings()),
    GetPage(name: AppPages.signIn, page: ()=>SignInView(),binding:SignInBindings()),
    GetPage(name: AppPages.signUp, page: ()=>SignUpView(),binding: SignUpBindings()),
  ];
}