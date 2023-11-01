import 'package:flutter/material.dart';
import 'package:flutter_firebase_empleados/ui/pages/auth/login.dart';
import 'package:flutter_firebase_empleados/ui/pages/auth/register.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/registro': (context) => RegisterPage()
      },
    );
  }
}
