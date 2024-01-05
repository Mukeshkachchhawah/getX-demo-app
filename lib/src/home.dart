import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/contorller/home_contorller.dart';

import 'create_customer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
            onPressed: () {
              /// NEW
              Get.to(CreateCustomerPage());

              /// OLD
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => CreateCustomerPage(),
              //     ));
            },
            child: Text("Create Customer")),
        // SizedBox(
        //   height: 100,
        // ),
        TextButton(
            onPressed: () {
              final homeContorller = Get.put(HomeController());

              print(homeContorller.name.text);
              print(homeContorller.address.text);
              print(homeContorller.pinCode.text);
              print(homeContorller.number.text);
            },
            child: Text("Create Invoice"))
      ]),
    );
  }
}
