import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth_controller/register_controller.dart';
import 'package:my_project/controller/auth_controller/request_opt_controller.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';


class InputPhoneScreen extends StatefulWidget {
  const InputPhoneScreen({super.key, required this.onClickSignin});
  final VoidCallback onClickSignin;
  @override
  State<InputPhoneScreen> createState() => _InputPhoneScreenState();
}

class _InputPhoneScreenState extends State<InputPhoneScreen> {
  final formKey = GlobalKey<FormState>();
  final con = Get.put(GlobleData());
  final request = Get.put(RequestOTP());
  final register = Get.put(Register());
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
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 8),
              child: Text(
                'Open your new account with',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0A0B09)),
              ),
            ),
            const Text(
              'CiC Mobile App',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0A0B09)),
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
                                validator: (value) => value!.isEmpty
                                    ? 'Please enter your number phone'
                                    : null,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'phone number'),
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
                  register.sentNum(context);
                  request.sentOTP(context);
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
                      'Get OTP',
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
