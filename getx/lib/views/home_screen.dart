// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/model/my_data.dart';
import 'package:getx/views/secondScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0,right: 18,top: 15),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Enter your name"),
              ),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(labelText: "Enter your age"),
              ),
              ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  final age = _ageController.text;
                  // create box
                  final box = GetStorage();
                  box.write(
                    'data',
                    MyData(name: name, age: age),
                  );
                  print("Successfully added");
                },
                child: Text("Add"),
              ),
              ElevatedButton(onPressed: ()=>Get.toNamed("/details-screen"), child: Text("Go details screen"),),
              TextButton(
                onPressed: () => Get.toNamed("/second-screen"),
                child: Text("Click to second page"),
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: ()=> _counter++,
                  child: Obx(()=>Text(_counter.toString(),style: TextStyle(fontSize: 22),),)
              )
            ],
          ),
        ),
      ),
    );
  }
}
