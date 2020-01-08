import 'package:flutter/material.dart';
import 'package:instagram_app/home.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          title: TextStyle(color: Colors.blueGrey)
        )
      ),
      home: HomePage(),
    );
  }
}
