import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';

class SignInController extends GetxController{
  void moveToSignUpScreen(){
    Get.toNamed(AppPages.signUp);
  }
}