import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones de Gestión'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                // Acción para la gestión de empleados
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GestionEmpleados()),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people, size: 50),
                    Text('Gestión de Empleados'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción para la gestión de funciones
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GestionFunciones()),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.work, size: 50),
                    Text('Gestión de Funciones'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción para ver/editar perfil
                Get.toNamed("/perfil");
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 50),
                    Text('Perfil'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GestionEmpleados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Empleados'),
      ),
      body: Center(
        child: Text('Pantalla de Gestión de Empleados'),
      ),
    );
  }
}

class GestionFunciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestión de Funciones'),
      ),
      body: Center(
        child: Text('Pantalla de Gestión de Funciones'),
      ),
    );
  }
}

class PerfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: Center(
        child: Text('Pantalla de Perfil de Usuario'),
      ),
    );
  }
}
