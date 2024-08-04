import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_in_air/auth/auth.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register_binding.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register_controller.dart';
import 'package:quest_in_air/firebase_options.dart';
import 'package:quest_in_air/view/add_quest.dart';
import 'package:quest_in_air/view/create_quest.dart';
import 'package:quest_in_air/view/login/login_binding.dart';
import 'package:quest_in_air/view/login/login_controller.dart';
import 'package:quest_in_air/view/registration/registration_controller.dart';
import 'package:quest_in_air/view/success_screen.dart';
import 'package:quest_in_air/view/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (value) {
      Get.put(RegistrationController());
      Get.put(LoginOrRegisterController());
      Get.put(LoginController());
    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        // GetPage(name: '/welcome', page: ()=> const WelcomeScreen()),
        GetPage(name: '/auth', page: () => const AuthScreen()),
        GetPage(
            name: '/login',
            page: () => const LoginOrRegisterScreen(),
            binding: LoginOrRegisterBinding()),
        //  GetPage(name: '/registration', page: () => const RegistrationScreen(), binding: RegistrationBinding()),
        // GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/create', page: () => const CreateQuest()),
        GetPage(name: '/add', page: () => const AddQuest()),
        GetPage(name: '/success', page: () => const SuccessScreen()),
      ],
      home: const WelcomeScreen(),
    );
  }
}
