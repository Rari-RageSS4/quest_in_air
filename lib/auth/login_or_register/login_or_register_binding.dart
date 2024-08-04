import 'package:get/get.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register_controller.dart';

class LoginOrRegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> LoginOrRegisterController());
  }
  
}