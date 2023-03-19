import 'package:flutter/material.dart';
import 'package:tugas2_123200001/list_daftar.dart';

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListDaftar(),
    );
  }
}
