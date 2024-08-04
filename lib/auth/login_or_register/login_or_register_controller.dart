import 'package:get/get.dart';

class LoginOrRegisterController extends GetxController{
  // initially show login page
  RxBool showLoginPage = true.obs;

  void togglePages(){
    showLoginPage.value = !showLoginPage.value;
  }
}