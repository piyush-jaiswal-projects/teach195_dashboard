import 'package:flutter/material.dart';
import 'package:teach195/domain/models/teacher.dart';
import 'package:teach195/presentation/widgets/StatusButton.dart';

class TeacherCard extends StatelessWidget {
  final Teacher teacher;

  const TeacherCard({
    Key? key,
    required this.teacher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1376,
      height: 88,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF3C138),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xffFFFAF0),
      ),
      child: Row(
        children: [
          Container(
            width: 320,
            child: Row(
              children: [
                circularDp(), // profile image
                SizedBox(width: 16),
                teacherInfo()
              ],
            ),
          ),
          Container(
            width: 1000,
            margin: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                agencyName(),
                subject(),
                rating(),
                StatusButton(status: teacher.status)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container rating() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text(teacher.rating.toString(),
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Color(0xff3D3936))),
          const Text("/5",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: Color(0xff3D3936)))
        ],
      ),
    );
  }

  Container subject() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Text(teacher.subject,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: Color(0xff3D3936))),
    );
  }

  Container agencyName() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Text(teacher.agencyName,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              color: Color(0xff3D3936))),
    );
  }

  Container teacherInfo() {
    return Container(
      height: 48,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Add this line
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          title(),
          subtitle(),
        ],
      ),
    );
  }

  Container circularDp() {
    return Container(
      width: 72,
      height: 72,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  Row title() {
    return Row(
      children: [
        Container(
          // width: 153,
          margin: const EdgeInsets.only(right: 5),
          height: 24,
          child: Text(
            teacher.name,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                color: Color(0xffA27A25)),
          ),
        ),
        Container(
          width: 3,
          height: 18,
          color: const Color(0xff3D3936),
        ),
        Container(
          width: 60,
          height: 24,
          margin: const EdgeInsets.only(left: 5),
          child: Text(
            teacher.id.toString(),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                color: Color(0xffA27A25)),
          ),
        )
      ],
    );
  }

  Row subtitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          height: 24,
          child: Text(
            teacher.gender,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                color: Color(0xff3D3936)),
          ),
        ),
        Container(
          width: 2,
          height: 16,
          color: const Color(0xff3D3936),
        ),
        Container(
          width: 60,
          height: 24,
          margin: const EdgeInsets.only(left: 5),
          child: Text(
            teacher.age.toString() + "y",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
                color: Color(0xff3D3936)),
          ),
        )
      ],
    );
  }
}
