import 'package:flutter/material.dart';
import 'package:teach195/presentation/components/booking_details.dart';
import 'package:teach195/presentation/widgets/calendar_bar.dart';
import 'package:teach195/presentation/widgets/selected_user.dart';
import 'package:teach195/presentation/widgets/status_button.dart';

class UserTimesheet extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const UserTimesheet(
      {Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectedUser(activeTeacher: activeTeacher, activeId: activeId),
        const SizedBox(
          height: 16,
        ),
        const CalendarBar(),
        const SizedBox(
          height: 32,
        ),
        const BookingDetails(),
        Container(
          width: 1018,
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatusButton(status: "Pending", text: "Reject"),
              StatusButton(status: "Approved", text: "Approve")
            ],
          ),
        )
      ],
    );
  }
}
