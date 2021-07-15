import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Lato'),
      initialRoute: '/cadastroEstoque',
    ).modular();
  }
}
