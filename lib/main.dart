import 'package:flutter/material.dart';
import 'package:mobx_teste/store/contador.store.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ContadorStore>( create: (_)=>ContadorStore(),)
      ],
      child: MaterialApp(
        title: 'Meu teste flutter',
        home: Home(),
      ),
    );
  }
  
}



