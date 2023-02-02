import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';

import '../../controller/auth_controller/login_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.onClickSignin});
  final VoidCallback onClickSignin;
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final con = Get.put(GlobleData());
  final login = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffDEE8F3)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 122, left: 133, right: 132),
              child: Stack(
                children: [
                  Image.asset('asset/image/cic.png'),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 28),
                    child: Container(
                        decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.2),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 44, top: 8),
              child: Row(
                children: const [
                  Text(
                    'Welcome back to',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0A0B09)),
                  ),
                  Text(
                    'CiC Mobile App',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0A0B09)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffCEDCEC),
                          border: Border.all(color: Colors.blue)),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Icon(
                              Icons.call,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SizedBox(
                              width: 250,
                              child: TextFormField(
                                controller: con.phoneController.value,
                                keyboardType: TextInputType.phone,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter your number phone'
                                    : null,
                                onChanged: (value) {
                                  if (value == '') {
                                    con.isChecked == true;
                                  } else {
                                    con.isChecked == false;
                                  }
                                },
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Phone number'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffCEDCEC),
                          border: Border.all(color: Colors.blue)),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                left: 18,
                                top: 10,
                                bottom: 10,
                              ),
                              child: SvgPicture.asset(
                                'asset/svg/Password.svg',
                                color: Colors.blue,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SizedBox(
                              width: 250,
                              child: TextFormField(
                                controller: con.passwordController.value,
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter your number phone'
                                    : null,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 70, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  login.login(context);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff0F50A4),
                      border: Border.all(color: Colors.white)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 14, bottom: 14),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: 'DM Sans'),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
