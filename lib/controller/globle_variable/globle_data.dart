import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/api_base_helper.dart';

class GlobleData extends GetxController{
  final phoneController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final otpController = TextEditingController().obs;

final apiBaseHelper = ApiBaseHelper();
final currentpage = 0.obs;
final isChecked =false.obs;
final selected = ''.obs;
}