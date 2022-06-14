import 'package:flutter/material.dart';
import 'package:routeswitharguments/home.dart';
import 'package:provider/provider.dart';
import 'package:routeswitharguments/login.dart';
import 'package:routeswitharguments/provider/decrement.dart';
import 'package:routeswitharguments/provider/home_provider.dart';
import 'package:routeswitharguments/sign_up.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
            create: (BuildContext context)=>Decrement()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        routes: {
        Login.routname:(context)=>const Login(),
         SignUp.routname:(context)=>const SignUp()
        },
      ),
    );
  }
}




