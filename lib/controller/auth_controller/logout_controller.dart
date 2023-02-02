import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Screen/Authentication/login_Screen.dart';

import '../../helper/local_storage.dart';

class Logout extends GetxController {
  Future logout(BuildContext context) async {
    await LocalStorage.removeStorage(key: 'token').then((value) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}
