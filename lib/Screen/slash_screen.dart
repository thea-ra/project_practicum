import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_project/Screen/Authentication/homePage.dart';
import 'package:my_project/Screen/first_screen.dart';

import '../helper/local_storage.dart';

class SlashSrceen extends StatefulWidget {
  const SlashSrceen({super.key});

  @override
  State<SlashSrceen> createState() => _SlashSrceenState();
}

class _SlashSrceenState extends State<SlashSrceen> {
  onNavigate() {
    Future.delayed(const Duration(seconds: 4), () async {
      final token = await LocalStorage.getStringValue(key: 'token');
      // ignore: unrelated_type_equality_checks
      if (token != '') {
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FirstScreen()));
      } else {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const FirstScreen()));
      }
    });
  }

  @override
  void initState() {
    onNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 170, left: 20, right: 20),
            child: Center(
              child: Lottie.asset('asset/lotties/welcome.json'),
            ),
          ),
          const Text(
            'Welcome to our app',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          )
        ],
      ),
    );
  }
}
