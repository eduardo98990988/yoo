import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

final usuarioCtrl = TextEditingController();
final contraCtrl = TextEditingController();
final formKey = GlobalKey<FormState>();

class ListadoUsuarioScreen extends StatelessWidget {
  const ListadoUsuarioScreen({super.key});

  Future<void> fetchRegistroUsuario() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return void.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
class registroUsuario {
  final int userId;
  final int id;
  final String title;

  const registroUsuario({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory registroUsuario.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      } =>
        Album(
          userId: userId,
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}


  submitData() async {
    if (formKey.currentState!.validate()) {
      print("Valido");
      print(usuarioCtrl.text);
      print(contraCtrl.text);
      await sendPostRequest(usuarioCtrl.text, contraCtrl.text);
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
                  'LISTADO DE USUARIOS',
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
                        ? 'Por favor ingrese el correo'
                        : null;
                  },
                  controller: usuarioCtrl,
                  decoration: InputDecoration(
                    hintText: 'Ingrese correo',
                    labelText: 'Correo*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (String? value) {
                    return (value != null && value.isEmpty)
                        ? 'Por favor ingrese la contraseña'
                        : null;
                  },
                  controller: contraCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Ingrese contraseña',
                    labelText: 'Contraseña*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => submitData(),
                  child: Text(
                    'INGRESAR',
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
                Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('¿Olvidó su contraseña?'),
                        ),
                      ],
                    ),
                    SizedBox(width: 70),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/registro_usuario');
                          },
                          child: Text('Registrate'),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Volver'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
