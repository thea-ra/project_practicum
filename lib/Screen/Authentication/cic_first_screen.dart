
import 'package:flutter/material.dart';

import 'input_phone_screen.dart';
import 'login_Screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff4483CB),
              Color(0xff83A9D2),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 320),
              child: Row(
                children: const [
                  Text(
                    'En',
                    style: TextStyle(fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_drop_down_circle,
                      size: 18,
                      color: Color(0xff0F50A4),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 133, right: 132),
              child: Center(
                child: Image.asset('asset/image/cic.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 61, left: 10, right: 10.5),
              child: Center(
                child: Image.asset('asset/image/Frame.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 65, bottom: 8),
              child: Text(
                'Open your new account with',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            const Text(
              'CiC Mobile App',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  // new screen
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InputPhoneScreen(
                            onClickSignin: (() {}),
                          )));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 14,
                      bottom: 14,
                      left: 16,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'phone number',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
      
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 132, left: 98),
                child: Row(
                  children: [
                    const Text(
                      'Are you already has this acoount? ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text('Login',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
