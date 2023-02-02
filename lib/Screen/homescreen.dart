import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Model/card_Model/card_model.dart';
import 'package:my_project/Screen/loan_screen.dart';
import 'package:my_project/Screen/recieve_screen.dart';
import 'package:my_project/Screen/send/sent_screen.dart';
import 'package:my_project/Screen/updatecreen.dart';
import 'package:my_project/controller/globle_variable/globle_data.dart';
import 'package:my_project/controller/mycontroller.dart';
import '../component/buttom_navigation.dart';
import '../component/saving_card.dart';
import 'inputscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    'Edit',
    'Delete',
    'Update',
  ];
  final con = Get.put(Mycontroller());
  bool isDismissible = false;
  @override
  Widget build(BuildContext context) {
    final glo = Get.put(GlobleData());
    return Scaffold(
      appBar: null,
      backgroundColor: const Color(0xffE9F0FB),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 15, right: 18, left: 18),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.short_text),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          PopupMenuButton(
                            itemBuilder: (_) => items
                                .asMap()
                                .entries
                                .map(
                                  (e) => PopupMenuItem(
                                    onTap: null,
                                    child: GestureDetector(
                                        onTap: () {
                                          if (e.value == 'Edit') {
                                            career.text = cardModel.career!;
                                            username.text = cardModel.username!;
                                            Navigator.pop(context);
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        const UpdateInfo()))
                                                .then(
                                                  (value) => setState(() {}),
                                                );
                                          }
                                        },
                                        child: SizedBox(
                                          child: Row(
                                            children: [
                                              Icon(
                                                e.value == 'Edit'
                                                    ? Icons.edit
                                                    : e.value == 'Delete'
                                                        ? Icons.delete
                                                        : Icons.update,
                                                size: 18,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Text(
                                                  e.value,
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      ),
                    ),

                    //Profile

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: cardModel.image!.startsWith('asset/image')
                                ? CircleAvatar(
                                    backgroundImage:
                                        AssetImage(cardModel.image.toString()),
                                    radius: 50,
                                  )
                                : CircleAvatar(
                                    backgroundImage: FileImage(
                                        File(cardModel.image.toString())),
                                    radius: 50,
                                  ),
                          ),
                          Text(
                            ' ${cardModel.username.toString()}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5B628F)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cardModel.career.toString(),
                              style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 52, right: 52, top: 20, bottom: 20),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  sumary('\$ ${totalSum(Transaction.Sent)}',
                                      'Income'),
                                  const VerticalDivider(
                                    thickness: 0.3,
                                    color: Colors.black,
                                  ),
                                  sumary('\$ ${totalSum(Transaction.Recieve)}',
                                      'Expenses'),
                                  const VerticalDivider(
                                    thickness: 0.3,
                                    color: Colors.black,
                                  ),
                                  sumary('\$ ${totalSum(Transaction.Loan)}',
                                      'Loan'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),

          //Overview
          Padding(
            padding:
                const EdgeInsets.only(top: 18, left: 22, right: 22, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: const [
                  Text(
                    "Overview",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5B628F)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.notifications,
                      size: 20,
                      color: Color(0xff5B628F),
                    ),
                  )
                ]),
                const Text(
                  "Step 13,2020",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xff5B628F)),
                )
              ],
            ),
          ),

          //Custom card
          Obx(
            () => Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: con.mylist.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: () {
                            glo.selected.value = e.title.toString();
                            glo.selected.value == 'Sent'
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SentScreen(
                                            amount: e.amount.toString(),
                                            descri: e.description.toString())))
                                : glo.selected.value == 'Recieve'
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailScreen(
                                                  amounts: e.amount.toString(),
                                                  descrip:
                                                      e.description.toString(),
                                                )))
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoanScreen(
                                                amount: e.amount.toString(),
                                                descri:
                                                    e.description.toString())));
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
              ),
            ),
          ),
          const BottomNav()
        ],
      ),
    );
  }
}

Widget sumary(String amount, String catego) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            amount,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(
                  0xff5B628F,
                )),
          ),
        ),
        Text(catego, style: const TextStyle(fontSize: 10)),
      ],
    ),
  );
}
