import 'package:flutter/material.dart';
import 'package:flutter_firebase_empleados/domain/controller/controluser.dart';
import 'package:flutter_firebase_empleados/ui/pages/widget/input.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwControl = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    ControlUserAuth cua = Get.find();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/login.jpeg'),
              ),
            ),
            RoundedTextField(
              hintText: 'Correo electrónico',
              labelText: 'Email',
              controller: emailControl,
            ),
            const SizedBox(height: 20),
            RoundedTextField(
              hintText: 'Contraseña',
              labelText: 'Contraseña',
              isPassword: true,
              controller: passwControl,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cua
                    .ingresarUser(emailControl.text, passwControl.text)
                    .then((value) {
                  if (cua.userValido == null) {
                    Get.snackbar(
                      'Título del Snackbar',
                      'Contenido del Snackbar',
                      snackPosition: SnackPosition.TOP, // Posición del Snackbar
                      backgroundColor:
                          Colors.amber, // Color de fondo del Snackbar
                      colorText: Colors.white, // Color del texto del Snackbar
                      borderRadius: 10, // Radio de borde del Snackbar
                      margin: const EdgeInsets.all(10), // Márgenes del Snackbar
                      duration:
                          const Duration(seconds: 3), // Duración del Snackbar
                      isDismissible:
                          true, // Hacer dismiss (desaparecer) al tocar fuera del Snackbar
                      dismissDirection:
                          DismissDirection.vertical, // Dirección para dismiss
                      forwardAnimationCurve:
                          Curves.easeOutBack, // Animación al aparecer
                      reverseAnimationCurve:
                          Curves.easeInBack, // Animación al desaparecer
                    );
                  } else {
                    Get.offAllNamed('/home');
                  }
                });
              },
              child: const Text('Iniciar sesión'),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Get.offAllNamed('/registro');
                },
                child: const Text('Crear Cuenta'))
          ],
        ),
      ),
    );
  }
}
