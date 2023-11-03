import 'package:flutter/material.dart';
import 'package:flutter_firebase_empleados/domain/controller/controlperfil.dart';
import 'package:flutter_firebase_empleados/domain/controller/controluser.dart';
import 'package:flutter_firebase_empleados/ui/pages/widget/input.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwControl = TextEditingController();
  final TextEditingController nombreControl = TextEditingController();
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    ControlUserPerfil cup = Get.find();
    ControlUserAuth cua = Get.find();
    return Scaffold(
      appBar: AppBar(
          title: Obx(() => cua.userValido!.user!.email == null
              ? const Text('')
              : Text('Registro de usuario${cua.userValido!.user!.email}'))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedTextField(
              hintText: 'Nombre',
              labelText: 'Nombre',
              controller: nombreControl,
            ),
            SizedBox(height: Get.height * 0.05),
            RoundedTextField(
              hintText: 'Correo electrónico',
              labelText: 'Email',
              controller: emailControl,
            ),
            SizedBox(height: Get.height * 0.05),
            RoundedTextField(
              hintText: 'Contraseña',
              labelText: 'Contraseña',
              isPassword: true,
              controller: passwControl,
            ),
            SizedBox(height: Get.height * 0.05),
            RoundedTextField(
              hintText: 'Confirmar contraseña',
              labelText: 'Confirmar contraseña',
              isPassword: true,
              controller: passwControl,
            ),
            SizedBox(height: Get.height * 0.05),
            ElevatedButton(
              onPressed: () {
                cua
                    .crearUser(emailControl.text, passwControl.text)
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
                    var datos = {'nombre': nombreControl.text};
                    cup
                        .crearcatalogo(datos, null)
                        .then((value) => Get.offAllNamed('/home'));
                  }
                });
              },
              child: const Text('Registrarse'),
            ),
            TextButton(
                onPressed: () {
                  Get.offAllNamed('/login');
                },
                child: const Text('Iniciar Sesion'))
          ],
        ),
      ),
    );
  }
}
