
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/Screen/Authentication/login.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              padding: const EdgeInsets.only(top: 42, left: 320),
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
              padding: EdgeInsets.only(top: 66, bottom: 8),
              child: Text(
                'Welcome back to CIC Mobile App',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(
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
                      children: [
                        SvgPicture.asset('asset/svg/call.svg'),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Phone number',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(
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
                      left: 11,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('asset/svg/Password.svg'),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Password',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 11),
                          child: Text(
                            'Forgot?',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 1,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text('Or'),
                  ),
                  Container(
                    width: 150,
                    height: 1,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31, left: 122, right: 121),
              child: Row(
                children: [
                  SvgPicture.asset('asset/svg/shareface.svg'),
                  const Text('Login with face ID',
                      style: TextStyle(fontSize: 12, color: Colors.white))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 22, left: 98),
                child: Row(
                  children: const [
                    Text(
                      'Do not you have account?',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text('Register',
                        style: TextStyle(fontSize: 12, color: Colors.white))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
