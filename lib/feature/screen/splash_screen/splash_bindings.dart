import 'package:get/get.dart';
import 'package:online_shop/feature/screen/splash_screen/splash_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}