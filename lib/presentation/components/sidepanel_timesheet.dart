import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/active_teacher.dart';
import 'package:teach195/presentation/widgets/approval_list.dart';
import 'package:teach195/presentation/widgets/search_filter.dart';

class Sidepanel extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const Sidepanel({Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 864,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        border: Border.all(
          color: const Color(0xffEBE2C8),
        ),
      ),
      child: Column(
        children: [
          const SearchFilter(),
          Column(
            children: [
              ActiveTeacher(name: activeTeacher, bookingId: activeId),
              const ApprovalList(),
            ],
          )
        ],
      ),
    );
  }
}
