import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Catalog"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to 60 Days of Flutter"),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
