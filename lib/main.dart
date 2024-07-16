import 'package:flutter/material.dart';
import 'package:teach195/presentation/pages/home.dart';
import 'package:teach195/presentation/pages/timesheet.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'teach195',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/timesheet", page: () => const TimeSheetPage()),
      ],
    );
  }
}
