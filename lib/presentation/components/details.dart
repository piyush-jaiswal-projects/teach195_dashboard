import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/StatusButton.dart';

class Details extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  Details({Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectedBar(),
        const SizedBox(
          height: 16,
        ),
        CalendarBar()
      ],
    );
  }

  Container CalendarBar() {
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
              ),
              SizedBox(
                width: 8,
              ),
              StatusButton(
                status: "Pending",
                text: "PENDING",
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

  Container SelectedBar() {
    return Container(
      width: 1018,
      height: 144,
      decoration: BoxDecoration(
          color: Color(0xffF3C138), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
              child: Row(
                children: [
                  DisplayPicture(),
                  const SizedBox(width: 8),
                  TeacherInfo()
                ],
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 16, 40, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [BookButton()],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector BookButton() {
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

  Column TeacherInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$activeTeacher | $activeId",
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Color(0xff363636)),
        ),
        const Text(
          "Science | QTS",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        )
      ],
    );
  }

  Container DisplayPicture() {
    return Container(
      width: 112,
      height: 112,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFFFAF0),
      ),
    );
  }
}
