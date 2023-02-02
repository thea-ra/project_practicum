import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavingCard extends StatelessWidget {
  const SavingCard(
      {super.key, this.color, this.title, this.subtitle, this.amount});
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: 88,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9), color: color),
          child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(children: [
                Container(
                  width: 4,
                  color: color,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffAFAFAF),
                          blurRadius: 4,
                          offset: Offset(1, 2), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 12, right: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$title',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0A0B09),
                                      fontFamily: 'DMSans'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text('$subtitle',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff0A0B09),
                                          fontFamily: 'DMSans')),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'asset/svg/Vector.svg',
                                  width: 5,
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Text('$amount',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff0A0B09),
                                          fontFamily: 'DMSans')),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                )
              ])),
        ));
  }
}
