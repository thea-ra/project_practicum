// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/auth_controller/logout_controller.dart';

import '../controller/user_controller.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final auth = Auth();
  final con = Get.put(Logout());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF3F5F7),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'asset/image/animated.jfif',
                      ),
                      radius: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Toek Theara',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'Fashion Model',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Row(
                  children: const [
                    Icon(Icons.call),
                    Text(
                      '(855) 9002920',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Row(
                  children: const [
                    Icon(Icons.email),
                    Text(
                      'toektheara0907@gmail.com',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: GestureDetector(
                onTap: () {
                  con.logout(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'Logout',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
