import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{
  final TextEditingController mailOrPhnoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login
  void register() async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mailOrPhnoController.text.trim(), 
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e){
        if(e.code == "weak-password"){
          print('password provided is too weak');
        } else if(e.code == "email-already-in-use"){
          print('An Account already exist');
        }
      } catch(e){
        print(e);
      }
    }
    
}