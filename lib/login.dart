import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'KOPYMIX',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
                Text('Empresa dedicada a la venta de impresoras')
              ],
            ),
            Image.network(
              'https://kopymix.com/sites/default/files/favicon%20kopymix.ico',
              width: 400,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/inicio_sesion');
                  },
                  child: Text('Iniciar Sesión'),
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/registro_usuario');
                  },
                  child: Text(
                    'Registrate',
                    style: TextStyle(color: Colors.brown),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: BorderSide(color: Colors.brown),
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/rastreo_envio');
                  },
                  child: Text(
                    'Ver pedido',
                    style: TextStyle(color: Colors.brown),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: BorderSide(color: Colors.brown),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
