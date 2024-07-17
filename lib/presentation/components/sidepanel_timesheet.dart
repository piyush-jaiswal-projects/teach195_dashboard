import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/approval_list.dart';
import 'package:teach195/presentation/widgets/search_filter.dart';

class Sidepanel extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  const Sidepanel(
      {Key? key, required this.activeTeacher, required this.activeId})
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
              Container(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                color: const Color(0xffF3C138),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      activeTeacher,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      activeId,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              const ApprovalList(),
            ],
          )
        ],
      ),
    );
  }
}
