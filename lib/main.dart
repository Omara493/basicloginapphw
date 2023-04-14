// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'Pages/Login.dart';
import 'Pages/Signup.dart';
import 'Pages/SignUpsuccess.dart';
import 'Pages/Forgotpasspage.dart';
import 'Pages/resetdone.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) =>  Login(),
      '/signup':(context)=>Signup(),
      '/success':(context)=>SignUpSuccessPage(),
      '/forget':(context)=>ForgotPasswordPage(),
      '/reset':(context)=>PasswordResetSuccessPage(),
      '/home':(context)=>HomeScreen(),
    },
  ));
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          'Welcome!',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'You have successfully logged in!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}


