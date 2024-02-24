import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final nombreCtrl = TextEditingController();
final apellidoCtrl = TextEditingController();
final correoCtrl = TextEditingController();
final passwordCtrl = TextEditingController();
final celularCtrl = TextEditingController();
final formKey = GlobalKey<FormState>();

class RegistroUsuarioScreen extends StatelessWidget {
  const RegistroUsuarioScreen({super.key});

  Future<void> sendPostRequest(
      nombre, apellido, correo, password, celular) async {
    var response = await http.post(
        Uri.parse(
            "https://cb62352b-a670-457d-b61c-c7502d5dffa7-00-1khkdfe801oin.riker.replit.dev/"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "nombre": nombre,
          "apellido": apellido,
          "correo": correo,
          "password": password,
          "celular": celular
        }));

    if (response.statusCode == 200) {
      print("objectNombre");
    } else {
      print("objectApellido");
    }
  }

  submitData() async {
    if (formKey.currentState!.validate()) {
      print("Valido");
      print(nombreCtrl.text);
      print(apellidoCtrl.text);
      print(correoCtrl.text);
      print(passwordCtrl.text);
      print(celularCtrl.text);
      await sendPostRequest(nombreCtrl.text, apellidoCtrl.text, correoCtrl.text,
          passwordCtrl.text, celularCtrl.text);
    } else {
      print("Invalido");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'REGISTRO DE USUARIO',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text('Empresa dedicada a la venta de impresoras'),
                SizedBox(height: 10),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese el nombre'
                        : null;
                  },
                  controller: nombreCtrl,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Ingrese su nombre',
                    labelText: 'Nombre*',
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese su apellido'
                        : null;
                  },
                  controller: apellidoCtrl,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Ingrese sus apellidos',
                    labelText: 'Apellido*',
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese el correo'
                        : null;
                  },
                  controller: correoCtrl,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Ingrese correo',
                    labelText: 'Correo*',
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese la contraseña'
                        : null;
                  },
                  controller: passwordCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.visibility),
                    hintText: 'Ingrese contraseña',
                    labelText: 'Contraseña*',
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese su número de celular'
                        : null;
                  },
                  controller: celularCtrl,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Ingrese número de celular',
                    labelText: 'Celular*',
                    labelStyle: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => submitData(),
                      child: Text(
                        'REGISTRAR',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/listado_usuario')},
                      child: Text(
                        'Ver lista de usuarios',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text('Volver'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
