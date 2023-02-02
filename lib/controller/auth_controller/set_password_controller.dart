import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Screen/homescreen.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';

import '../../helper/api_base_helper.dart';

class Setpassword extends GetxController{
  final con = Get.put(GlobleData());
    Future setPassword(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'user/set-password',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "password": con.passwordController.value.text,
          "password_confirmation":con.passwordController.value.text,
        }).then((value) {
      if (value['message'] = true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      } else {
        debugPrint("Erro");
      }
    }).onError((ErrorModel error, stackTrace) {
      print(error.bodyString);
    });
  }
}