import 'package:flutter/material.dart';
import 'package:teach195/presentation/components/details.dart';
import 'package:teach195/presentation/components/sidepanel.dart';
import 'package:teach195/presentation/widgets/BreadCrumb.dart';
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
          child: Column(
            children: [
              BreadCrumb(title: params["name"] ?? ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Sidepanel(activeTeacher: params["name"] ?? "", activeId: params["id"] ?? "BookingId"),
                  Details(activeTeacher: params["name"] ?? "", activeId: params["id"] ?? "BookingId"),
                  SizedBox(width: 14,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
