import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/src/home.dart';

import '../contorller/home_contorller.dart';

class AddParty extends StatelessWidget {
  const AddParty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Party')),
      body: GetBuilder<HomeController>(builder: (value) {
        return Column(children: [
          TextField(
            decoration: InputDecoration(hintText: 'Name'),
            controller: value.name,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Number'),
            controller: value.number,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Address'),
            controller: value.address,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Pin Code'),
            controller: value.pinCode,
          ),
          TextButton(
              onPressed: () {
              
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: Text("Add Party"))
        ]);
      }),
    );
  }
}
