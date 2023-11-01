import 'package:flutter/material.dart';
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
    ControlUserAuth cua = Get.find();
    return Scaffold(
      appBar: AppBar(
          title: Obx(() =>
              Text('Registro de usuario${cua.userValido!.user!.email ?? ''}'))),
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
                cua.crearUser(emailControl.text, passwControl.text);
              },
              child: Text('Registrarse'),
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
