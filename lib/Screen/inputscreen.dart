// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/Model/card_Model/card_model.dart';
import 'package:my_project/controller/mycontroller.dart';

bool disable = false;

class FormInput extends StatefulWidget {
  final String? sent;
  final String? description;
  final String? amountget;
  const FormInput({super.key, this.sent, this.description, this.amountget});

  @override
  State<FormInput> createState() => _FormInputState();
}

final con = Get.put(Mycontroller());

class _FormInputState extends State<FormInput> {
  bool validat = false;

  final listChoice = ['Send', 'Recieve', 'Loan'];
  String selected = '';
  @override
  void initState() {
    con.description.value.text = widget.description ?? '';
    con.amount.value.text = widget.amountget ?? '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xffE9F0FB),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 95, bottom: 40),
                child: Center(
                  child: cardModel.image!.startsWith('asset/image')
                      ? CircleAvatar(
                          backgroundImage:
                              AssetImage(cardModel.image.toString()),
                          radius: 55,
                        )
                      : CircleAvatar(
                          backgroundImage:
                              FileImage(File(cardModel.image.toString())),
                          radius: 50,
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: listChoice
                      .map((e) => GestureDetector(
                            onTap: () {
                              if (widget.sent == null) {
                                selected = e;
                              }
                              setState(() {});
                            },
                            child: Row(
                              children: [
                                Icon((widget.sent ?? selected) == e
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank_rounded),
                                Text(e),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(1, 0.0),
                              blurRadius: 1,
                              spreadRadius: 1.0,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 8, left: 8),
                            child: Icon(Icons.description),
                          ),
                          Expanded(
                            child: TextField(
                              controller: con.description.value,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'description',
                                  errorText: validat ? 'Can not be null' : null,
                                  hintStyle: TextStyle(
                                      color:
                                          validat ? Colors.red : Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                          )
                        ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Amount',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(1, 0.0),
                                blurRadius: 1,
                                spreadRadius: 1.0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              child: Icon(Icons.attach_money),
                            ),
                            Expanded(
                              child: TextField(
                                  controller: con.amount.value,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'amount',
                                      errorText:
                                          validat ? 'Can not be null' : null,
                                      hintStyle: TextStyle(
                                          color: validat
                                              ? Colors.red
                                              : Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                      onPressed: () {
                        con.createAlbum();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              )
            ]),
          )),
    );
  }
}

enum Transaction { Sent, Recieve, Loan }

String totalSum(Transaction type) {
  double sum = 0;
  String transaction = type.toString().split('.').last;
  con.mylist.map((e) {
    if (e.title == transaction) {
      sum = sum + double.parse(e.amount.toString());
    }
  }).toList();
  return sum.toString();
}
