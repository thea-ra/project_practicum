import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/Screen/account_screen.dart';
import 'package:my_project/Screen/inputscreen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23),
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 11, left: 31, right: 31),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('asset/svg/homesvg.svg')),
                  const Text('Home'),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormInput()));
                },
                child: Column(
                  children: [
                    SvgPicture.asset('asset/svg/Qrcode.svg'),
                    const Text('Create'),
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountScreen()));
                      },
                      child: SvgPicture.asset('asset/svg/account.svg')),
                  const Text('Account'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
