import 'package:flutter/material.dart';
import 'package:flutter_block_tutorial/features/home/ui/home.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: Home(),
    );
  }
}






// event -> bloc -> state