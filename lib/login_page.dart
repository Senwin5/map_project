import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Column(
        children: [
          Text(
            "Welcome to Deus Magnus Ltd",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text("Login here to Continue",
          style:
          TextStyle(
            color: Colors.white
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12),
                )
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12),
                )
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
       
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

            child: Row(
              children: [
                Image.asset('assets/images/google.png', width: 22, height: 22),
                Text("Login with Google Account"),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {
              print("facebook is been clicked on");
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                Text("Login with Facebook Account"),
              ],
            ),
          ),

          Row(
            children: [
              Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: Text("Sign up here")),
            ],
          ),
        ],
      ),
    );
  }
}
