import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        // foregroundColor: Colors.white,
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 60 Days of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
