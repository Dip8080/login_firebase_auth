import 'dart:math';
// import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_auth/pages/Login/Welcome_page.dart';
import 'package:login_firebase_auth/pages/Login/login.dart';

// this controlller will be responsible for nevigating through different pages according to user interection
// for that this controller must be accessable from all pages
//to do that we have to create an instense like -- [AuthController.instence.---]
class AuthController extends GetxController{
  static AuthController instance = Get.find();

  // user model like - name , email , pass

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

//gtting user data
  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  
  }

  // redirecting user

   _initialScreen(User? user){

        if(user==null){
          print("login page");
          Get.offAll(()=>Login());
        }
        else {
          Get.offAll(()=>Welcome_page());
        }
       }


//to register New User
  void register(String email, password) async{
     try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
    }


    catch(error){
      Get.snackbar("About User", "User message",
      backgroundColor: Color.fromARGB(255, 224, 96, 96),
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Account creation failed",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white,
        ),
      )
      
      );
      
    }
  }

//to Log in Existing User

void Login(String email, password) async{
     try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
    }


    catch(error){
      Get.snackbar("About Login", "Login message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        "Login failed",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      messageText: Text(
        e.toString(),
        style: TextStyle(
          color: Colors.white,
        ),
      )
      
      );
      
    }
  }

  //To log out a User

  void logOut()async{
    await auth.signOut();
  }


}