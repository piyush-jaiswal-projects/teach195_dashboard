import 'package:flutter/material.dart';
import 'status_button.dart';

class CalendarBar extends StatelessWidget {
  const CalendarBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1018,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Timesheet: May 2024 - Week 4",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xffA27A25),
                    fontFamily: 'Poppins'),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xffF3C138),
                  ),
                ),
                child: const Text(
                  "27 May 2024 - 31 May 2024",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xff3D3936)),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  border: Border.all(
                    color: const Color(0xffF3C138),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_left_sharp,
                  color: Color(0xffA27A25),
                ),
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  border: Border.all(
                    color: const Color(0xffF3C138),
                  ),
                ),
                child: const Icon(Icons.arrow_right_sharp,
                    color: Color(0xffA27A25)),
              )
            ],
          )
        ],
      ),
    );
  }
}
