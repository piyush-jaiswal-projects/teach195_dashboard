import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar TopBar(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xff3D3936),
    leadingWidth: 200,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed("/");
        },
        child: Image.asset("assets/images/logo.png", fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error);
        }),
      ),
    ),
  );
}
