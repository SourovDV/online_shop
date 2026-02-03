import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';

class SplashController extends GetxController{

  Future<void> moveToSignInPage()async{
    await Future.delayed(Duration(seconds: 5));
    Get.toNamed(AppPages.signIn);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    moveToSignInPage();
  }
}