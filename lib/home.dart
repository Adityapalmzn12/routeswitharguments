import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routeswitharguments/login.dart';
import 'package:routeswitharguments/provider/decrement.dart';
import 'package:routeswitharguments/provider/home_provider.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: const Text('Hey'),
    ),
    body: Column(children: [

      Text(Provider.of<HomeProvider>(context).counter.toString(),style: const TextStyle(fontSize: 38),),
      Text(Provider.of<Decrement>(context).newCount.toString(),style: const TextStyle(fontSize: 38),),
      Material(child:
        OutlinedButton(child:const Text('Sumbit'),onPressed: (){
          Provider.of<HomeProvider>(context, listen: false).increment();
        },),),
      Material(child:
      OutlinedButton(child:const Text('Login'),onPressed: (){
        // Provider.of<HomeProvider>(context, listen: false).decrement();
        // Provider.of<Decrement>(context, listen: false).decrements();
        Navigator.pushNamed(context, Login.routname);
      },),)
    ],),);
  }
}
