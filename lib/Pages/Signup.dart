// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          "Sign Up page",
        ),
      ),
     body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Create your account",
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          SizedBox(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[200],
                // prefixIcon: Icon(Icons.email),
                hintText: "Name:",
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
            child: SizedBox(
              width: 300.0,
              child: TextField(
                
                decoration: InputDecoration(
                  hintText: "Email:",
                  filled: true,
                  fillColor: Colors.purple[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // prefixIcon: Icon(Icons.lock),
                  // suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
           Center(
            child: SizedBox(
              width: 300.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: " Password:",
                  filled: true,
                  fillColor: Colors.purple[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // prefixIcon: Icon(Icons.lock),
                  // suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: 300.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/success');
              },
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
                // minimumSize: Size(300.0, 50.0),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              child: Text(
                "Create account",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ),     
        ],
      ),
    );
  }
}
