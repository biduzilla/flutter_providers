import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/models/client.dart';
import 'package:providers/models/client_type.dart';
import 'package:providers/models/clients.dart';

import 'pages/client_types_page.dart';
import 'pages/clientes_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => Clients(clients: [
                Client(
                    name: "Toddy",
                    email: "Toddy@Toddy",
                    type: ClientType(name: "Premium", icon: Icons.add))
              ])),
    ],
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
