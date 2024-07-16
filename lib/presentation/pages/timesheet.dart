import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/TopBar.dart';
import 'package:get/get.dart';

class TimeSheetPage extends StatelessWidget {
  const TimeSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String?> params = Get.parameters;

    return Scaffold(
      appBar: TopBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Timesheet Page"),
              Text("Hello ${params["name"]}!, Your id is: ${params["id"]}")
            ],
          ),
        ),
      ),
    );
  }
}
