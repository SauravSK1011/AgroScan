import 'dart:math';


import 'package:agroscan/Screens/HomePage.dart';
import 'package:agroscan/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

    String email = "", password = "",name='';
    String phoneno;
    bool _success = false;
    Future _register(email, pass) async {
      User? user = (await auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      ))
          .user;

      if (user != null) {
        setState(() {
          print("Hi");
          _success = true;
        });
      } else {
        setState(() {
          print("Hello");

          _success = false;
        });
      }
    }

    return Scaffold(
      body: Center(
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              stops: [0.3, 1.0],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 120, 238, 155),
                Colors.blue,
              ],
            )),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'to get started now!',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GlassContainer(
                        linearGradient: const LinearGradient(
                            colors: [Colors.white38, Colors.white38]),
                        blur: 1.05,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            onChanged: (String value) {
                              name = value;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white, hintText: "Name"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GlassContainer(
                        linearGradient: const LinearGradient(
                            colors: [Colors.white38, Colors.white38]),
                        blur: 1.05,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(keyboardType: TextInputType.phone,
                            onChanged: (String value) {
                              phoneno = value;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white, hintText: "Phone Number"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GlassContainer(
                        linearGradient: const LinearGradient(
                            colors: [Colors.white38, Colors.white38]),
                        blur: 1.05,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            onChanged: (String value) {
                              email = value;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white, hintText: "Email"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GlassContainer(
                        linearGradient: const LinearGradient(
                            colors: [Colors.white38, Colors.white38]),
                        blur: 1.05,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(obscureText: true,
                            onChanged: (String value) {
                              password = value;
                            },
                            decoration: const InputDecoration(
                                fillColor: Colors.white, hintText: "Password"),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 75,
                    ),
                    GlassContainer(
                      linearGradient: const LinearGradient(
                          colors: [Colors.white, Colors.white]),
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                              onTap: () async {
                                await _register(email, password);
                                if (_success != false) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => Home()),
                                      (Route<dynamic> route) => false);
                                }
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        (MediaQuery.of(context).size.width / 2 -
                                            75),
                                    right:
                                        (MediaQuery.of(context).size.width / 2 -
                                            75),
                                    bottom: 5,
                                    top: 5),
                                child: Text("Sign Up",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                    )),
                              ))),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
       
            ),
      ),
    );
  }
}
