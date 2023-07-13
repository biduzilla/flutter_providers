import 'package:flutter/material.dart';
import 'package:providers/models/client_type.dart';

import 'client.dart';

class Types extends ChangeNotifier {
  List<ClientType> types;

  Types({required this.types});

  void add(ClientType type) {
    clients.add(client);
    notifyListeners();
  }

  void remove(int index) {
    clients.removeAt(index);
  }
}
