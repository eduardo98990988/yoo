import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final usuarioCtrl = TextEditingController();
final contraCtrl = TextEditingController();
final formKey = GlobalKey<FormState>();

class InicioSesionScreen extends StatelessWidget {
  const InicioSesionScreen({super.key});

  Future<void> sendPostRequest(email, password) async {
    var response = await http.post(
        Uri.parse(
            "https://cb62352b-a670-457d-b61c-c7502d5dffa7-00-1khkdfe801oi4n.riker.replit.dev/"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}));

    if (response.statusCode == 200) {
      print("objectx");
    } else {
      print("objecty");
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text('Empresa dedicada a la venta de impresoras'),
                SizedBox(height: 10),
                Image.network(
                  'https://kopymix.com/sites/default/files/favicon%20kopymix.ico',
                  width: 400,
                ),
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
