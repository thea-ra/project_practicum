import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';

import '../../helper/api_base_helper.dart';

class RequestOTP extends GetxController {
  final con = Get.put(GlobleData());
  Future sentOTP(BuildContext context) async {
    await con.apiBaseHelper.onNetworkRequesting(
        url: 'request-otp',
        methode: METHODE.post,
        isAuthorize: false,
        body: {
          'phone': '+855${con.phoneController.value.text.substring(1)}',
        }).then((res) {
      try {
        debugPrint(res['code']);
      } catch (e) {
        debugPrint(e.toString());
      }
    });
  }
}
