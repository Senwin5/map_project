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
            Text("Welcome to Deus Magnus Ltd"),
            Text("Login here to Continue"),
            TextField(decoration: InputDecoration(hintText: "Username")),
            TextField(decoration: InputDecoration(hintText: "Password")),
            TextButton(
              onPressed: () {
                print("Forgot is clicked");
              },
              child: Text("Forgot is clicked"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Login is clicked");
              },
              child: Text("Login to Deus Magnus"),
            ),
            Text("Or sign up with Google"),
            ElevatedButton(
              onPressed: () {
                print("Google is clicked");
              },
              child: Text("Login with Google"),
            ),
          ],
        ),
      ),
    );
  }
}
