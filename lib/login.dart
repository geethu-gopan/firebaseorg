import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text.trim(),
        password: password.text.trim());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(children: [
          TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),hintText: 'Email'
              )
          ),
          SizedBox(height: 30,),
          TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  hintText: 'password'
              )
          ),
          SizedBox(height: 30,),
          TextButton(style:TextButton.styleFrom(backgroundColor: Colors.yellowAccent),
              onPressed: (){}, child: Text('click')),
        ],),
      ),
    );
  }
}

