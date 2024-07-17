import 'package:flutter/material.dart';
import 'display_picture.dart';
import 'teacher_info.dart';
import 'book_button.dart';

class SelectedUser extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const SelectedUser(
      {Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1018,
      height: 144,
      decoration: BoxDecoration(
          color: const Color(0xffF3C138),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
              child: Row(
                children: [
                  const DisplayPicture(),
                  const SizedBox(width: 8),
                  TeacherInfo(
                    activeTeacher: activeTeacher,
                    activeId: activeId,
                  )
                ],
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 16, 40, 16),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [BookButton()],
            ),
          )
        ],
      ),
    );
  }
}
