import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: controller.obx(
        (data) => ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      subtitle: Text(
                        "data[index]['']",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              );
            }),
        onError: (error) => Center(
          child: Text(error!),
        ),
      ),
    );
  }
}
