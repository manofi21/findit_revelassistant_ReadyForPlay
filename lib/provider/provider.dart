import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  String username;
  String get usernameProvider => username;
  set usernameProvider(String strings) {
    this.username = strings;
    ChangeNotifier();
  }

  List<String> get list_string => ["Monday", "Tuesday", "Wednesday"];
  List<String> get list_string2 => ["Monday", "Tuesday", "Wednesday"];
  final toDate = DateTime.now();

  List<DropdownMenuItem<String>> get list_dd => list_string
      .map((e) => DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          ))
      .toList();

  DateTime get before1 => toDate.subtract(Duration(days: 2));
  DateTime get before2 => toDate.subtract(Duration(days: 1));
  DateTime get after1 => toDate.add(Duration(days: 1));
  DateTime get after2 => toDate.add(Duration(days: 2));
}
