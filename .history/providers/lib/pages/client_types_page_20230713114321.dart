import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ClientsTypePage extends StatefulWidget {
  const ClientsTypePage({super.key, required this.title});
  final String title;

  @override
  State<ClientsTypePage> createState() => _ClientsTypePageState();
}

class _ClientsTypePageState extends State<ClientsTypePage> {
  List<ClientType> types = [
    ClientType(name: 'Platinum', icon: Icons.credit_card),
    ClientType(name: 'Golden', icon: Icons.card_membership),
    ClientType(name: 'Titanium', icon: Icons.credit_score),
    ClientType(name: 'Diamond', icon: Icons.diamond),
  ];

  IconData? selectedIcon;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
