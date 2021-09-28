import 'package:flutter/material.dart';
import 'WhatsappHome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),

      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}

