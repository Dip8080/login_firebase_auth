import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase_auth/pages/Login/auth_controller.dart';
// import 'package:login_firebase_auth/pages/Login/Reginster.dart';
// import 'package:login_firebase_auth/pages/Login/Welcome_page.dart';
import 'package:login_firebase_auth/pages/Login/login.dart';
import 'package:get/get.dart';
void main() async {
  //dependency injection- to the auth controller will be accessable from anywhere from the app;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value)=>Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Login() ,
    );
  }
}

