import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/models/clients.dart';

import 'pages/client_types_page.dart';
import 'pages/clientes_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Clients(clients: []),
  ));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Clientes',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientsTypePage(title: 'Tipos de Clientes')
      },
    );
  }
}
