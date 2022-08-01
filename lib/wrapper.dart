import 'homepage.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    
    return (firebaseUser == null) ? SignUpPage(): HomePage(firebaseUser);
  }
}