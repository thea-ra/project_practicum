import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/Screen/inputscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  final String amounts;
  final String descrip;
  const DetailScreen({super.key, required this.amounts, required this.descrip});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<String> data = [
    'All transaction wil record by our stystem',
    'All data was not share to any 3rd party side',
    'Please do not share your credential data',
    'Make sure you recieved all amount',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22243B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff22243B),
        centerTitle: true,
        title: const Text('Recieve'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 138),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffE9F0FB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: SvgPicture.asset('asset/svg/arrow_down.svg'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 8),
                    child: Text(
                      '5 May 2022',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Text(widget.amounts,
                      style:
                          const TextStyle(fontSize: 36, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(widget.descrip,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffEFF3FC),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Privacy policies',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          children: data
                              .map(
                                (e) => Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 6),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        size: 6,
                                        color: Colors.black,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          e,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                size: 6,
                                color: Colors.black,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Contact us '),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  String telephoneUrl = 'tel:+91 9830268966';
                                  final uri = Uri.parse('tel:$telephoneUrl');

                                  if (await canLaunchUrl(uri)) {
                                    await launchUrl(uri);
                                  } else {
                                    throw "Error occured trying to call that number.";
                                  }
                                },
                                child: const Text(
                                  '(+855)12345567',
                                  style: TextStyle(color: Color(0xff000EB4)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //botton
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FormInput(
                                    sent: 'Send',
                                  )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff3E4584),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 18, bottom: 17, left: 25, right: 44),
                              child: Text(
                                'Return',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15, bottom: 15, right: 37),
                              child: Icon(Icons.turn_right,
                                  size: 22, color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff3E4584),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 18, bottom: 17, left: 25, right: 49),
                                  child: Text('Done',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 37, top: 15, bottom: 15),
                                  child: Icon(
                                    Icons.check,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
