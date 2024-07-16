import 'package:flutter/material.dart';

class BreadCrumb extends StatelessWidget {
  final String title;
  const BreadCrumb({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        children: [
          const Text(
            "My List >",
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xff363636)),
          ),
          SizedBox(width: 5),
          Text("$title >",
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff363636))),
          SizedBox(width: 5),
          const Text(
            "Timesheet",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xffA27A25),
            ),
          ),
        ],
      ),
    );
  }
}
