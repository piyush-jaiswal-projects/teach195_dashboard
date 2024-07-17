import 'package:flutter/material.dart';

class TeacherInfo extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const TeacherInfo({Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$activeTeacher | $activeId",
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Color(0xff363636)),
        ),
        const Text(
          "Science | QTS",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        )
      ],
    );
  }
}
