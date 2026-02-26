import 'package:biometric/auth_service.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auth Page"),
      ),
      body: Center(
        child: IconButton(onPressed: () async{
          bool check = await AuthService().authenticateLocally();
          if(check){
            Navigator.pushReplacementNamed(context, "/home");
          }
        }, icon: Icon(Icons.fingerprint, size: 70.0,)),
      )
    );
  }
}