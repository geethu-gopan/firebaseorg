import 'package:firebaseorg/home.dart';
import 'package:flutter/material.dart';
import 'package:firebaseorg/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
    return Home();
    }
          else{
            return login();
          }
  })
    );
  }
}
