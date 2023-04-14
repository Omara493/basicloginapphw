// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print,

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          "Login page",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[200],
                prefixIcon: Icon(Icons.email),
                hintText: "Your Email:",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Container(
              width: 300.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password:",
                  filled: true,
                  fillColor: Colors.purple[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: 300.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              child: Text(
                "login",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forget');
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ),
              Text(
                "|",
                style: TextStyle(fontSize: 20.0),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
