import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  final bool isTap = false;
  // bool get isTap => _isTap;
  void increment() {
    _count++;
    notifyListeners();
  }
void decrement() {
    _count--;
    notifyListeners();
  }
  List<Map<String, dynamic>> data = [
    {
      "name": "Shirt1",
      "Price": 200,
      "image":
          "https://th.bing.com/th?id=OIP.SLiqYLo8h71LhOR_5Fd-6AHaJ4&w=216&h=288&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "name": "Shirt2",
      "Price": 400,
      "image":
          "https://th.bing.com/th?id=OIP.BXPav46zzCT_LQwvXBf4ywHaJf&w=220&h=283&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "name": "Shirt3",
      "Price": 400,
      "image":
          "https://th.bing.com/th?id=OIP.BXPav46zzCT_LQwvXBf4ywHaJf&w=220&h=283&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    },
    {
      "name": "Shirt4",
      "Price": 400,
      "image":
          "https://th.bing.com/th?id=OIP.BXPav46zzCT_LQwvXBf4ywHaJf&w=220&h=283&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"
    }
  ];
}
