import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_project/Model/card_Model/card_model.dart';

bool disable = false;
final username = TextEditingController();
final career = TextEditingController();

class UpdateInfo extends StatefulWidget {
  const UpdateInfo({super.key});

  @override
  State<UpdateInfo> createState() => _UpdateInfoState();
}

bool validate = false;

class _UpdateInfoState extends State<UpdateInfo> {
  String? newusername = cardModel.username;
  String? newcareer = cardModel.career;
  String? imagePicker = cardModel.image;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffE9F0FB),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Update Information',
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.black),
        ),
        backgroundColor: const Color(0xffE9F0FB),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 5),
                  // ignore: unnecessary_null_comparison
                  child: GestureDetector(
                    onTap: () {
                      getFromGallery();
                      disable = true;
                    },
                    child: imagePicker!.startsWith('asset/image/')
                        ? CircleAvatar(
                            backgroundImage: AssetImage(imagePicker.toString()),
                            radius: 50,
                          )
                        : CircleAvatar(
                            backgroundImage:
                                FileImage(File(imagePicker.toString())),
                            radius: 55,
                          ),
                  )),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Username',
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
                              controller: username,
                              onChanged: (value) {
                                setState(() {
                                  newusername = value;
                                  if (newusername == cardModel.username) {
                                    disable = false;
                                  } else {
                                    disable = true;
                                  }
                                });
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Career',
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
                                  controller: career,
                                  onChanged: (value) {
                                    setState(() {
                                      newcareer = value;
                                      if (newcareer == cardModel.career) {
                                        disable = false;
                                      } else {
                                        disable = true;
                                      }
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  )),
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
                    color: disable ? Colors.blue : Colors.grey,
                  ),
                  child: TextButton(
                      onPressed: disable
                          ? () {
                              setState(() {
                                cardModel = CardModel(
                                    image: imagePicker,
                                    username: username.text,
                                    career: career.text);
                                disable = !disable;
                              });
                              Navigator.pop(context);
                            }
                          : null,
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: disable ? Colors.white : Colors.black,
                            fontSize: 18),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imagePicker = pickedFile.path;
      });
    }
  }
}
