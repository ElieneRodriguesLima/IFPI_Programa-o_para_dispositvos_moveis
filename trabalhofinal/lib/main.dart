import 'package:flutter/material.dart';
import 'package:trabalhofinal/pages/form_de_cadastro.dart';
import 'package:trabalhofinal/pages/login.dart';
import 'package:trabalhofinal/routes/rotas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
      routes: {
        AppRoutes.USER_FORM: (_) => UserForm(),
      },
    );
  }
}
