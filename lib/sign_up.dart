import 'package:flutter/material.dart';
import 'package:routeswitharguments/login.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
static const routname='/SignUp';
  @override
  Widget build(BuildContext context) {
    final data=ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(appBar:
        AppBar(title:
         Text(data.values.toString()),),
        body:  Container());
  }
}
