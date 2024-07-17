import 'package:flutter/material.dart';

class DisplayPicture extends StatelessWidget {
  const DisplayPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 112,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFFFAF0),
      ),
      child: const Icon(Icons.person, size: 48, color: const Color(0xff3D3936)),
    );
  }
}
