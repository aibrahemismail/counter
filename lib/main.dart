import 'package:first_progect_flutter/provider/conter_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>counterprovider()), ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "counter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Mainscreen(),
    ),
    );
     
  }
}

