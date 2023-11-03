import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_empleados/domain/controller/controlperfil.dart';
import 'package:flutter_firebase_empleados/domain/controller/controluser.dart';
import 'package:flutter_firebase_empleados/ui/app.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyA-5zJkc5CIitRspUqVIrEvjW-Epupv6f8",
              authDomain: "mensajeros-dfa22.firebaseapp.com",
              databaseURL:
                  "https://mensajeros-dfa22-default-rtdb.firebaseio.com",
              projectId: "mensajeros-dfa22",
              storageBucket: "mensajeros-dfa22.appspot.com",
              messagingSenderId: "1095817888283",
              appId: "1:1095817888283:web:59501d01ab8bfa71c92ebe"))
      : await Firebase.initializeApp();

  Get.put(ControlUserPerfil());
  Get.put(ControlUserAuth());
  runApp(const MyApp());
}
