import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 138,
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xff3D3936)),
        child: const Center(
          child: Text(
            "RE-BOOK",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xffF3C138)),
          ),
        ),
      ),
    );
  }
}
