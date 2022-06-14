import 'package:flutter/material.dart';
import 'package:routeswitharguments/sign_up.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routname='/Login';
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: const Text('Hello'),),
        body: Column(
          children: [
          const Text('new Login'),
            OutlinedButton(onPressed: (){
              ///pass data in arguements from here to SignUp Page
              Navigator.pushNamed(context, SignUp.routname,arguments: {'Aditya':'Adityasdasd'
              });
            }, child: const Text("Pass data to next screen"))
          ],
        ));
  }
}
