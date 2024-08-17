import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/util/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = " ";
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Name",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      changeColor = true;
                    });
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  hoverColor: Colors.black,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 10),
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    child: changeColor
                        ? Icon(Icons.done)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                    decoration: BoxDecoration(
                      shape: changeColor ? BoxShape.circle : BoxShape.rectangle,
                      // borderRadius: BorderRadius.circular(changeColor ? 50 : 8),
                      color: changeColor ? Colors.purpleAccent : Colors.black,
                    ),
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text(
                //     "LOG IN",
                //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                //   ),
                //   style: TextButton.styleFrom(
                //       backgroundColor: Colors.yellow,
                //       minimumSize: Size(150, 50)),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
