import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/calendar_bar.dart';
import 'package:teach195/presentation/widgets/selected_user.dart';

class UserTimesheet extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const UserTimesheet({Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectedUser(activeTeacher: activeTeacher, activeId: activeId),
        const SizedBox(
          height: 16,
        ),
        const CalendarBar()
      ],
    );
  }
}
