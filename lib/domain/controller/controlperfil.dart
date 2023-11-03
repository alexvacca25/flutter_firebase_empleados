import 'package:flutter_firebase_empleados/data/services/peticionperfil.dart';
import 'package:get/get.dart';

class ControlUserPerfil extends GetxController {
  Future<void> crearcatalogo(Map<String, dynamic> catalogo, foto) async {
    await Peticiones.crearcatalogo(catalogo, foto);
  }
}