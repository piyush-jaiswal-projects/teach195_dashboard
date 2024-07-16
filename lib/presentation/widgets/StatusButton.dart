import 'package:flutter/material.dart';

class StatusButton extends StatelessWidget {
  final String status;
  final String text;
  const StatusButton({Key? key, required this.status, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: status == "Pending"
            ? const Color(0xFFD44949)
            : const Color(0xff76FF6A),
      ),
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: status == "Pending"
                  ? const Color(0xffF6EFDF)
                  : const Color(0xff3D3936),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
