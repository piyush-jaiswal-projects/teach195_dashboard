import 'package:flutter/material.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      height: 424,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Booking Info",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xffA27A25))),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 254,
              height: 384,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  header(),
                  statsCard("Total Hours", "15 h", true),
                  statsCard("Total Days", "5", false),
                  statsCard("Total Charge", "12", true),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container statsCard(String text, String value, bool isColored) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      color: isColored ? const Color(0xffF6F2EA) : Colors.white,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xff3D3936)),
          ),
          Text(
            value,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Color(0xffA27A25)),
          ),
        ],
      ),
    );
  }

  Container header() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      alignment: Alignment.centerLeft,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact:",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xffA27A25)),
          ),
          Text(
            "Rufus Humphrey",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Color(0xffA27A25)),
          )
        ],
      ),
    );
  }
}
