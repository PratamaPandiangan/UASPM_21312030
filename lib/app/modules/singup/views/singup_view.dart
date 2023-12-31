import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_21312030/app/controllers/auth_controller.dart';
import 'package:uas_21312030/app/modules/singup/controllers/singup_controller.dart';

import 'package:uas_21312030/app/modules/singup/controllers/singup_controller.dart';

class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup View'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              controller: controller.cPass,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => cAuth.signup(
                controller.cEmail.text,
                controller.cPass.text,
              ),
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
