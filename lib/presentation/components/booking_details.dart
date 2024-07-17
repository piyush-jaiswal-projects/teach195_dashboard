import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/booking_calendar.dart';
import 'package:teach195/presentation/widgets/booking_info.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BookingInfo(),
        SizedBox(
          width: 16,
        ),
        BookingCalendar(),
      ],
    );
  }
}