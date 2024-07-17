import 'package:flutter/material.dart';

class BookingCalendar extends StatelessWidget {
  const BookingCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
        width: 740,
        height: 424,
        color: const Color(0xffFFFFFF),
        child: Column(
          children: [
            tHead(),
            tRow("Monday", "27 May 2024", "09:30", "15:30", "6h", "?", true),
            tRow("Tuesdat", "28 May 2024", "9:30", "15:30", "6h", "?", false),
            tRow("Wednesday", "29 May 2024", "9:30", "12:30", "3h", "?", true),
            tRow("Thursday", "30 May 2024", "-", "-", "-", "?", false),
            tRow("Friday", "31 May 2024", "9:30", "12:30", "3h", "?", true),
            tRow("Saturday", "1 June 2024", "9:30", "12:30", "3h", "?", false),
            tRow("Sunday", "2 June 2024", "-", "-", "-", "-", true),
          ],
        ),
      ),
    );
  }

  Row tHead() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      tableCell("", false),
      tableCell("Starting Time", false),
      tableCell("Ending Time", false),
      tableCell("Total Hours", false),
      tableCell("Charge/Day", false),
    ]);
  }

  Row tRow(String day, String date, String startTime, String endTime,
      String totalHours, String chargePerDay, bool isColored) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 147,
          height: 53,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: isColored ? const Color(0xffF6F2EA) : Colors.white,
            border: Border(
              right: BorderSide(
                color: !isColored ? const Color(0xffF6F2EA) : Colors.white,
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: [
              Text(
                day,
                style: const TextStyle(
                    color: Color(0xff3D3936),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato'),
              ),
              Text(
                date,
                style: const TextStyle(
                    color: Color(0xffA27A25),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              )
            ],
          ),
        ),
        tableCell(startTime, isColored),
        tableCell(endTime, isColored),
        tableCell(totalHours, isColored),
        tableCell(chargePerDay, isColored),
      ],
    );
  }

  Container tableCell(String text, bool isColored) {
    return Container(
        width: 147,
        height: 53,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isColored ? const Color(0xffF6F2EA) : Colors.white,
          border: Border(
            right: BorderSide(
              color: !isColored ? const Color(0xffF6F2EA) : Colors.white,
              width: 1,
            ),
          ),
        ),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff3D3936))),
        ));
  }
}
