import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Screen/homescreen.dart';

import '../../helper/api_base_helper.dart';
import '../../helper/local_storage.dart';
import '../globle_variable/globle_data.dart';

class LoginController extends GetxController {
  final con = Get.put(GlobleData());
  Future login(BuildContext context) async {
    debugPrint(
        'phone===============: +855${con.phoneController.value.text.substring(1)}');
    debugPrint('password===============: ${con.passwordController.value.text}');
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'v4/login',
        methode: METHODE.post,
        isAuthorize: false,
        body: {
          "phone": '+855${con.phoneController.value.text.substring(1)}',
          "password": con.passwordController.value.text
        }).then((res) {
      debugPrint('success===============');
     LocalStorage.storeData(key: 'token', value: res['access_token']);
      debugPrint('success===============111');
      debugPrint('my token===============$res[access_token]');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      debugPrint('success===============222');
    }).onError((ErrorModel error, stackTrace) {
      print(
          "error from body login :${error.bodyString} : status: ${error.statusCode}");
    });
  }
}
