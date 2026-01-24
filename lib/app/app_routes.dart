import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_bindings.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_view.dart';

class AppRoutes{
  static final initialPage=AppPages.splash;

  static final List<GetPage> routes =[
    GetPage(name:AppPages.splash, page:()=>SplashView(),binding:SplashBindings()),
    GetPage(name: AppPages.signIn, page: ()=>)
  ];
}