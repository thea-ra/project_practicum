import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';

import '../../Screen/Authentication/set_password_screen.dart';
import '../../helper/api_base_helper.dart';
import '../../helper/local_storage.dart';
class VerifyOTP extends GetxController {
  final con = Get.put(GlobleData());

  Future verifyotp(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'verify-otp',
        methode: METHODE.post,
        isAuthorize: false,
        body: {
          "phone": '+855${con.phoneController.value.text.substring(1)}',
          "verify_code": con.otpController.value.text
        }).then((response) {
      var mytoken = response['access_token'];
      print(mytoken);
      LocalStorage.storeData(key: 'token', value: mytoken);
      if (mytoken != '') {
        debugPrint(mytoken);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SetPassword()));
      } else {
        debugPrint('token is null');
      }
    }).onError((ErrorModel error, stackTrace) {
      print(error.bodyString);
    });
  }
}
