import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quest_in_air/auth/login_or_register/login_or_register.dart';
import 'package:quest_in_air/view/home_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context, snapshot){
        // user logged in
        if(snapshot.hasData){
          return const HomeScreen();
        } else{
          return const LoginOrRegisterScreen();
        }
      }
    ),
    );
  }
}