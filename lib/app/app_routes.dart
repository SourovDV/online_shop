import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_bindings.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_view.dart';

class AppRoutes{
  static final initialPage=AppPages.signUp;

  static final List<GetPage> routes =[
    GetPage(name:AppPages.signUp, page:()=>SignUpView(),binding:SignUpBindings())
  ];
}