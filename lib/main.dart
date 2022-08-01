import 'package:covapp/auth.dart';
import 'package:covapp/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: Auth.firebaseUserStream, 
      child: MaterialApp(
          home: Wrapper(),
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}
