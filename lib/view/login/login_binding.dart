import 'package:get/get.dart';
import 'package:quest_in_air/view/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> LoginController());
  }
}