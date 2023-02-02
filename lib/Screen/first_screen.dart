import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_project/Screen/homescreen.dart';
import 'package:my_project/Screen/send/sent_detail.dart';
import 'package:my_project/component/saving_card.dart';

import '../component/button.dart';
import '../controller/mycontroller.dart';
import 'inputscreen.dart';

// ignore: must_be_immutable
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final con = Get.put(Mycontroller());
  @override
  void initState() {
    con.fetchdata();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Obx(
          () => con.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : NestedScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        expandedHeight: 148,
                        stretch: true,
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onStretchTrigger: () async {
                          debugPrint('stretch');
                        },
                        flexibleSpace: FlexibleSpaceBar(
                          stretchModes: const [StretchMode.zoomBackground],
                          background: Padding(
                            padding: const EdgeInsets.only(
                                top: 24, left: 20, right: 20),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      spreadRadius: 1,
                                      blurRadius: 15)
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff323873),
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, left: 20, right: 18, bottom: 21),
                                  child: SvgPicture.asset(
                                    'asset/svg/currency.svg',
                                    width: 60,
                                    height: 70,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 45, bottom: 18),
                                      child: Text(
                                        'Total Recieve in USD',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffFFFFFF),
                                            fontFamily: 'DMSans'),
                                      ),
                                    ),
                                    Text(
                                      '\$ ${totalSum(Transaction.Recieve)}',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'DMSans',
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF)),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          ),
                        ),
                      )
                    ];
                  },
                  body: Obx(
                    () => con.isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 2,
                                            blurRadius: 21)
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 9.28),
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 5.13,
                                            width: 34,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffBFBFBF),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 9.18),
                                          child: Column(
                                            children: con.mylist.map((e) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    con.selected.value =
                                                        e.title.toString();
                                                    con.selected.value == 'Sent'
                                                        ? Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    SentDetail(
                                                                        gettype: e
                                                                            .title
                                                                            .toString())))
                                                        : null;
                                                  },
                                                  child: SavingCard(
                                                    title: e.title,
                                                    subtitle: e.description,
                                                    amount: e.amount,
                                                    color: e.title == 'Sent'
                                                        ? Colors.red
                                                        : e.title == 'Recieve'
                                                            ? Colors.blue
                                                            : e.title == 'Loan'
                                                                ? Colors.green
                                                                : null,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SafeArea(
                                  top: false,
                                  minimum: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CustomeButton(
                                        text: 'Back',
                                        color: Color(0xff0F50A4),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen()));
                                        },
                                        child: const CustomeButton(
                                          text: 'Create more',
                                          color: Color(0xffFFFFFF),
                                          background: Color(0xff0F50A4),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                  )),
        ));
  }
}
