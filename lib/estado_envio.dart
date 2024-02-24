import 'package:flutter/material.dart';

class EstadoEnvioScreen extends StatelessWidget {
  const EstadoEnvioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ESTADO DE ENVÍO',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text('Empresa dedicada a la venta de impresoras'),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/estado_envio');
                                },
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 18),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/mapa_seguimiento');
                                },
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 18),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/estado_envio');
                                },
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 18),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/estado_envio');
                                },
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.brown,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('EN ORIGEN', style: TextStyle(fontSize: 10)),
                              SizedBox(width: 25),
                              Text('EN CAMINO', style: TextStyle(fontSize: 10)),
                              SizedBox(width: 20),
                              Text('EN DESTINO',
                                  style: TextStyle(fontSize: 10)),
                              SizedBox(width: 20),
                              Text('ENTREGADO', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_shipping),
                            title: Text('RECEPCIÓN',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle:
                                Text('Se recepcionó en la casa de Jeffri'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.person),
                            title: Text('REMITENTE',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.person_search_rounded),
                            title: Text('DESTINATARIO',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_shipping),
                            title: Text('CONTENIDO',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.credit_card),
                            title: Text('ESTADO PAGO',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.picture_as_pdf),
                            title: Text('FACTURA',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_shipping),
                            title: Text('COMPROBANTE',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('Datos'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/rastreo_envio');
                      },
                      child: Text('Volver'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
