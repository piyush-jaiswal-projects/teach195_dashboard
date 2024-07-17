import 'package:flutter/material.dart';

class ActiveTeacher extends StatelessWidget {
  final String name;
  final String bookingId;
  const ActiveTeacher({Key? key, required this.name, required this.bookingId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
      color: Color(0xffF3C138),
      child: Center(
        child: Text(
          "$name  | $bookingId",
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
