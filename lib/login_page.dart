import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Column(
        children: [
          SizedBox(height: 46),
          Text(
            "Welcome to Deus Magnus Ltd",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text("Login here to Continue", style: TextStyle(color: Colors.white)),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                print("Forgot is clicked");
              },
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              child: Text("Forgot is clicked"),
            ),
          ),

          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                print("Login is clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: Text("Login to Deus Magnus"),
            ),
          ),
          SizedBox(height: 30),
          Text("Or sign up with Google", style: TextStyle(color: Colors.white)),
          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              print("Google is clicked");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
            ), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google.png', width: 22, height: 22),
                Text(" Login with Google Account"),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {
              print("facebook is been clicked on");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                Text(" Login with Facebook Account"),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                " Don't have an account ?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                  //backgroundColor: Colors.amber
                ),
                child: Text(
                  " Sign up here",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
