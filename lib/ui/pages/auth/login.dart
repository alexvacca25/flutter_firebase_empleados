import 'package:flutter/material.dart';
import 'package:flutter_firebase_empleados/ui/pages/widget/input.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passwControl = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                // Aquí puedes añadir la lógica para validar el inicio de sesión
                // y manejar la información ingresada por el usuario.
                print('Iniciando sesión...');
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
