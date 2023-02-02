import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';
import 'package:my_project/helper/api_base_helper.dart';

import '../../Screen/Authentication/get_otp_screen.dart';

class Register extends GetxController {
  final con = Get.put(GlobleData());
  Future sentNum(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'register',
        methode: METHODE.post,
        isAuthorize: false,
        body: {'phone': '+855${con.phoneController.value.text}'}).then((res) {
      if (res['success'] = true) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OTPScreen()));
      }
    });
  }
}
