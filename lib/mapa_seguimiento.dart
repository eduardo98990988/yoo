import 'package:flutter/material.dart';

class MapaSeguimientoScreen extends StatelessWidget {
  const MapaSeguimientoScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MAPA DE SEGUIMIENTO',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text('Empresa dedicada a la venta de impresoras'),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.local_shipping),
                          title: TextField(
                            decoration: const InputDecoration(
                                labelText: 'Número de orden'),
                          ),
                          subtitle: TextField(
                            decoration: const InputDecoration(
                              labelText: 'Código',
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Buscar'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(width: 3),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/estado_envio');
                              },
                              child: Icon(Icons.qr_code),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(height: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            Column(
              children: [
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
    ));
  }
}
