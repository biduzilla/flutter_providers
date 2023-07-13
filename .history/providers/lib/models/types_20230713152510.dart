import 'package:flutter/material.dart';
import 'package:providers/models/client_type.dart';

import 'client.dart';

class Types extends ChangeNotifier {
  List<ClientType> types;

  Clients({required this.clients});

  void add(Client client) {
    clients.add(client);
    notifyListeners();
  }

  void remove(int index) {
    clients.removeAt(index);
  }
}
