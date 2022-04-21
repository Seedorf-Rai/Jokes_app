import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jokes_app/controller/joke_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Click For Jokes")),
            ElevatedButton(onPressed: () {}, child: const Text("Love Cat")),
          ],
        ),
      ),
    );
  }
}
