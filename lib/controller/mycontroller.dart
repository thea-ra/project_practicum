import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_project/Model/data_Model/data_model.dart';
import 'package:my_project/helper/api_base_helper.dart';

class Mycontroller extends GetxController {
  var url = 'http://192.168.0.102:8000/api/api.json';

  final description = TextEditingController().obs;
  final amount = TextEditingController().obs;
  final selected = ''.obs;
  var mylist = <ModelData>[].obs;
  final titleList = <ModelData>[].obs;
  var sendlist = <ModelData>[].obs;
  double sum = 0;
  final isLoading = false.obs;
  Future<List<ModelData>> fetchdata() async {
    isLoading(true);
    await http.get(Uri.parse(url)).then((response) {
      try {
        if (response.statusCode == 200) {
          var alldata = json.decode(response.body);
          alldata.map((e) {
            mylist.add(ModelData.fromJson(e));
          }).toList();
        } else {
          debugPrint('failed');
        }
      } catch (e) {
        debugPrint(e.toString());
      }
    });
    isLoading(false);
    return mylist;
  }

  Future createAlbum() async {
    var data = json.encode(
        {'description': description.value.text, 'amount': amount.value.text});
    await http.post(Uri.parse(url), body: data, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    }).then((res) {
      if (res.statusCode == 200) {
        debugPrint('success');
      } else {
        debugPrint('Error');
      }
    }).onError((ErrorModel error, stackTrace) => null);
  }
}
