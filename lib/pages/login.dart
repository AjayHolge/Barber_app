import 'package:barber/pages/home.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 30.0),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB91635),
                  Color(0xff621d3c),
                  Color(0xff311937),
                ],
              ),
            ),
            child: Text(
              "Hello\nSign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gmail",
                  style: TextStyle(
                    color: Color(0xFFB91635),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Gmail",
                    prefixIcon: Icon(Icons.mail_outline),
                  ),
                ),
                SizedBox(height: 40.0),

                Text(
                  "Password",
                  style: TextStyle(
                    color: Color(0xFFB91635),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xff311937),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.0),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFB91635),
                          Color(0xff621d3c),
                          Color(0xff311937),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xff311937),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xff621d3c),
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
