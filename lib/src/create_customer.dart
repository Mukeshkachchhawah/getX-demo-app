import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/src/add_partry.dart';

import '../contorller/home_contorller.dart';

class CreateCustomerPage extends StatelessWidget {
  const CreateCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Create Customer')),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Column(children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                ),
                controller: controller.name,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Number'),
                controller: controller.number,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddParty(),
                        ));
                  },
                  child: Text("Continue"))
            ]);
          },
        ));
  }
}
