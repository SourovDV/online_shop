import 'package:get/get.dart';
import 'package:online_shop/feature/screen/sign_in_screen/sign_in_controller.dart';

class SignInBindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignInController());
  }

}