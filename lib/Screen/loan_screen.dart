import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

class LoanScreen extends StatefulWidget {
  final String amount;
  final String descri;
  const LoanScreen({super.key, required this.amount, required this.descri});

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22243B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff22243B),
        centerTitle: true,
        title: const Text('Loan'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 27),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Color(0xffEFF3FC),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 47),
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              spreadRadius: 1,
                              blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffE9F0FB),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: SvgPicture.asset(
                          'asset/svg/dollar.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Container(
                      width: 296,
                      height: 118,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color(0xff233662)),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25, bottom: 8),
                            child: Text(
                              '5 May 2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Text(widget.amount,
                              style: const TextStyle(
                                  fontSize: 36, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 260,
                    height: 140,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae lectus urna. Pellentesque molestie vestibulum ex at interdum. Fusce magna ex, suscipit a sollicitudin nec, vehicula eget diam. Donec fermentum ',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 111, right: 111),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 58,
                            height: 43,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffD9E5FF)),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_downward),
                              onPressed: () {},
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Save'),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 58,
                            height: 43,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffD9E5FF)),
                            child: IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {
                                Share.share('Helo');
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Share'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 90,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff3E4584),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 17),
                      child: Text(
                        'More ',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
