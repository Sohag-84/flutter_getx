// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Go first page",style: TextStyle(fontSize: 20),),
              onPressed: () => Get.toNamed("/first-screen"),
            ),
            TextButton(
              onPressed: () {
                Get.snackbar("This is title", "This is message");
              },
              child: Text("show snack bar",style: TextStyle(fontSize: 20),),
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(title: "Do you want to close",
                  textConfirm: "OK",
                  textCancel: "Cancel"
                );
              },
              child: Text("show snack bar",style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
