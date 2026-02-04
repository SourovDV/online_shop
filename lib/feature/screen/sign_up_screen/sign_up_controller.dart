import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';

class SignUpController extends GetxController{
  void moveToSignInScreen(){
    Get.toNamed(AppPages.signIn);
  }
}