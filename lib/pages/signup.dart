import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              "Welcome\nSign up",
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
                  "Full Name",
                  style: TextStyle(
                    color: Color(0xFFB91635),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(height: 20.0),

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
                SizedBox(height: 20.0),

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
                    hintText: "Enter your password",
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 40.0),

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
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Already have an account?",
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
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Login",
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
