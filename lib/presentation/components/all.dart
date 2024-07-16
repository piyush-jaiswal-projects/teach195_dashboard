import 'package:flutter/material.dart';
import 'package:teach195/data/datasources/local/teachers.dart';
import 'package:teach195/presentation/widgets/TeacherCard.dart';

class AllTeachers extends StatelessWidget {
  const AllTeachers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "All Teachers",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Color(0xffA27A25),
              ),
            ),
          ),
          Column(
            children: teachers.map((teacher) {
              return TeacherCard(teacher: teacher);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
