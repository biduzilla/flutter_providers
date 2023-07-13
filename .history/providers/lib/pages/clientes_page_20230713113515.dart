import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/hamburguer_menu.dart';
import '../models/client.dart';
import '../models/client_type.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key, required this.title});
  final String title;

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  List<Client> clients = [
    Client(
        name: 'Geraldo',
        email: 'leo@email.com',
        type: ClientType(name: 'Platinum', icon: Icons.credit_card)),
    Client(
        name: 'Paulo',
        email: 'leo@email.com',
        type: ClientType(name: 'Golden', icon: Icons.card_membership)),
    Client(
        name: 'Caio',
        email: 'leo@email.com',
        type: ClientType(name: 'Titanium', icon: Icons.credit_score)),
    Client(
        name: 'Ruan',
        email: 'ruan@email.com',
        type: ClientType(name: 'Diamond', icon: Icons.diamond)),
  ];

  List<ClientType> types = [
    ClientType(name: 'Platinum', icon: Icons.credit_card),
    ClientType(name: 'Golden', icon: Icons.card_membership),
    ClientType(name: 'Titanium', icon: Icons.credit_score),
    ClientType(name: 'Diamond', icon: Icons.diamond),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const HamburgerMenu(),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.red,
            ),
            child: ListTile(
              leading: Icon(clients[index].type.icon),
              title: Text(
                '${clients[index].name}(${clients[index].type.name})',
              ),
              iconColor: Colors.indigo,
            ),
            onDismissed: (direction) {
              setState(() {
                clients.removeAt(index);
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          createType(context);
        },
        tooltip: 'Add Tipo',
        child: const Icon(Icons.add),
      ),
    );
  }

  void createType(context) {
    TextEditingController nomeInput = TextEditingController();
  }
}
