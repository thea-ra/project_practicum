import 'package:flutter/material.dart';
import 'Screen/slash_screen.dart';
import 'helper/local_storage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlashSrceen(),
    );
  }
}
