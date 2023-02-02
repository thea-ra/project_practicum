// ignore_for_file: avoid_print, depend_on_referenced_packages
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/user_model.dart';

class Auth {
  var formkey = GlobalKey<FormState>();
  var usermodel = UserModel();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<UserModel> getUser() async {
    String url = 'https://reqres.in/api/login';
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYWM4NjUwZjk3NDg4NzNkMWM3YjAzMmRhNTg2ZjQxN2NjZTU5MmRiZGJjMzk5ODM0ZTMzMDgyMjkyOTEwNzBmZWY3YmZmMjFhYzg4NWI0ZGYiLCJpYXQiOjE2NzE1MTE1OTMuNzQzNzExLCJuYmYiOjE2NzE1MTE1OTMuNzQzNzE0LCJleHAiOjE3MDMwNDc1OTMuNzMzNDQzLCJzdWIiOiIxMCIsInNjb3BlcyI6WyIqIl19.LvO4oEm-qFXN0juz0V5ZDKK791-bhEwglZmG7wuf0FCNaOoDEqtWnqDK1zCcADIP_91Ebu798HjIZbiJhUIkiAURoXEJTYhx7n2mDQ0vpeVabhm-SCOPAyCkLkSPu1ac1avyl1g8NRKVTQIp5vVgXSTzhU5RwplH0kfrPkBzlFRrh9Pp3unF9aj-9yYb3dYtE0xnAwOKY11B1hK8Z6q73vZiAZw5GoJ-V_UkwyRcVKOuCBHECiH_sdmZvpu9ugR4Zs6I0ipUSjTgmmqAEIetkaEsj1bDFHYU8NBhFPYN56FB6GrGrRCk4rYDAysp5IHH2fy9leNQHCVpufmhZqJyiPemtf_tCCaA0mjLKUKo6sG3hUdlig8_De15H6ddbhXdiA75ucGnznDJBSqNSJ0SNcoJQZdYlVEpGeOmxsbb16JvpFMsA-lcCsuUQFyO7ojAlKVJ-rpQxQR74D3el1U3ZXCdWYuukgEPuBdyjfxCtb3wTeE3Ro1qIUjKyqmKzawbPCEIPzr89JFzRaUpBf7tN_4hyEznKOt5r6JtZGndFldfj6yfj9DxhZBqBTlRQk16fC4eL639T2Gf-V5W-MES8kRfmjp3r2LCIPnjPmUVEuuDTfMg9N-4HOhBhGFjPngsNMU-BJRHCGA8q3cXSVz47CSYs8hnVlhj54uMzuDe_gg';
    try {
      await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'token_type $token'
      }).then((res) {
        if (res.statusCode == 200) {
          print('success');
          var jsonrespone = json.decode(res.body);
          usermodel = UserModel.fromJson(jsonrespone);
        }
      });
    } finally {}
    return usermodel;
  }

  Future<void> signIn() async {
    if (phoneController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var url = 'https://reqres.in/api/login';
      final res = await http.post(Uri.parse(url), body: {
        "email": phoneController.text,
        "password": passwordController.text
      });
      if (res.statusCode == 200) {
        var data = json.decode(res.body);
       
      } else {
        print('Erro');
      }
    } else {}
  }

  Future signout() async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    final tokentype = storage.getString('token');
    print(tokentype);
  }
}
