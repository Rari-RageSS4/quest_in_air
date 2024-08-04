import 'package:get/get.dart';
import 'package:quest_in_air/view/registration/registration_controller.dart';

class RegistrationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> RegistrationController());
  }
}