import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        body: Column(
          children: [
            Text("Hello, Welcome back"),
            Text("Login to continue"),
            TextField(decoration: InputDecoration(hintText: "Username")),
            TextField(decoration: InputDecoration(hintText: "Password")),
            TextButton(
              onPressed: () {
                print('Forgot is Clicked');
              },
              child: Text("Forgot Password"),
            ),
            ElevatedButton(
              onPressed: () {
                print('Login is Clicked');
              },
              child: Text("Login "),
            ),
            Text("Or sign in with"),
            ElevatedButton(
              onPressed: () {
                print("Google is Clicked");
              },
              child: Text("Login with Google"),
            ),
          ],
        ),
      ),
    );
  }
}
