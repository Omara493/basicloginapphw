// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PasswordResetSuccessPage extends StatelessWidget {
  const PasswordResetSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          'Password Reset Successful',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.purple,
              size: 100.0,
            ),
            SizedBox(height: 30.0),
            Text(
              'Your password has been successfully reset.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.purple,
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                ),
              ),
              child: Text(
                'Back to Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
