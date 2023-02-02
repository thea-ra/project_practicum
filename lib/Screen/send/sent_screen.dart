import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/Screen/inputscreen.dart';

class SentScreen extends StatefulWidget {
  final String amount;
  final String descri;
  const SentScreen({super.key, required this.amount, required this.descri});

  @override
  State<SentScreen> createState() => _SentScreenState();
}

class _SentScreenState extends State<SentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22243B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff22243B),
        centerTitle: true,
        title: const Text('Sent'),
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
            Padding(
              padding: const EdgeInsets.only(top: 66, right: 66, left: 66),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff20325B),
                        Color(0xff2F4A85)

                        // const Color(0xff2F4984).withOpacity(0.8),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 42),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 85,
                                height: 85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xffEAF1FB),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: SvgPicture.asset(
                                    'asset/svg/arrow_up.svg',
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 35, bottom: 8),
                                child: Text(
                                  '5 May 2022',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Text(widget.amount,
                                  style: const TextStyle(
                                      fontSize: 36, color: Colors.white)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 54, top: 8),
                                child: Text(widget.descri,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 36, left: 111, right: 111),
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
                          onPressed: () {},
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 130),
              child: Container(
                height: 58,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff3E4584),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => FormInput(
                                    sent: 'Send',
                                    description: widget.descri,
                                    amountget: widget.amount)))
                            .then((value) {
                          setState(() {});
                        });
                      });
                    },
                    child: const Text(
                      'Repeat ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
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
