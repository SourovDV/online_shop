import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/app_pages.dart';

class SignUpController extends GetxController{

  final controllerKey = GlobalKey<FormState>();
  //textEditing controller has used for get data from input
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController deliveryController = TextEditingController();

  //validation for every field as if every field stay validate
  String? emailValidation(String? value){
    if(value == null || value.isEmpty){
      return "email required";
    }
    if (!value.contains("@")) {
      return "Invalid email";
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Password required";
    }
    if (value.length < 6) {
      return "Minimum 6 characters";
    }
    return null;
  }

  String? firstAndLastAndDelivery(String?value){
    if(value == null || value.isEmpty){
      return "This field is required";
    }
    return null;
  }

  String?phoneValidation(String?value){
    if(value==null || value.isEmpty){
      return "this field is required";
    }else if(value.length<11){
      return "please minimum 11 number";
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Password required";
    }

    if (value.length < 8) {
      return "Minimum 8 characters";
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "At least one uppercase letter";
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "At least one lowercase letter";
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return "At least one number";
    }

    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return "At least one special character";
    }

    return null; // ✅ valid
  }

  void submit(){
    if(controllerKey.currentState!.validate()){
      Get.snackbar("Success", "Validation passed ✅");
    }else{
      Get.snackbar("Error", "Validation failed ❌");
    }
  }

  //for go to sign in screen
  void moveToSignInScreen(){
    Get.toNamed(AppPages.signIn);
  }

  @override
  void dispose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    deliveryController.dispose();
    super.dispose();
  }
}