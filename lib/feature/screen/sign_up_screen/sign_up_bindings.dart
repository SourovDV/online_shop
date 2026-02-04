import 'package:get/get.dart';
import 'package:online_shop/feature/screen/sign_up_screen/sign_up_controller.dart';

class SignUpBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SignUpController());
  }

}