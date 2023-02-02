import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/controller/mycontroller.dart';

class SentDetail extends StatefulWidget {
  const SentDetail({super.key, required this.gettype});
  final String gettype;

  @override
  State<SentDetail> createState() => _SentDetailState();
}

class _SentDetailState extends State<SentDetail> {
  final con = Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 320,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.near_me,
                          color: Colors.white,
                          size: 22,
                        ),
                        title: Text(
                          widget.gettype,
                          style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 22,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
                shrinkWrap: true,
                children: con.mylist
                    .asMap()
                    .entries
                    .map(
                      (e) => Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 10, 5, 0),
                            child: Container(
                              width: 350,
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 20, left: 10),
                            child: SizedBox(
                              width: 360,
                              height: 120,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8, 12, 20, 12),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.value.title.toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        const Text(
                                          'Sightseeing Tour',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xffB7C2C4)),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffafd6dd),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: const Center(
                                                  child: Text('9:00 am',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Container(
                                                width: 60,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffafd6dd),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                  child: Text('11:00 am',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12, left: 65),
                                    child: Column(
                                      children: const [
                                        Text('per pax',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xffB7C2C4)))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                    .toList()),
          )
        ],
      ),
    );
  }
}
