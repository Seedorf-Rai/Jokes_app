import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center(
          child: Text("Welcome To Home Page"),
        ),
      ),
    );
  }
}