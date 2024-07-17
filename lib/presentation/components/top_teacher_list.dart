import 'package:flutter/material.dart';
import 'package:teach195/data/datasources/local/teachers.dart';
import 'package:teach195/domain/models/teacher.dart';
import 'package:teach195/presentation/widgets/teacher_card.dart';

class TopTeacherList extends StatelessWidget {
  TopTeacherList({super.key});

  final List<Teacher> topTeachers =
      teachers.where((teacher) => teacher.rating > 4.5).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Top Rated Teachers",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 18,
                color: Color(0xffA27A25),
              ),
            ),
          ),
          Column(
            children: topTeachers.map((teacher) {
              return TeacherCard(teacher: teacher);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
