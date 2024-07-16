import 'package:flutter/material.dart';
import 'package:teach195/data/datasources/local/approval.dart';
import 'package:teach195/domain/models/approval.dart';
import 'package:teach195/presentation/widgets/ToggleButton.dart';

class Sidepanel extends StatelessWidget {
  final String activeTeacher;
  final String activeId;
  Sidepanel({Key? key, required this.activeTeacher, required this.activeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 864,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        border: Border.all(
          color: Color(0xffEBE2C8),
        ),
      ),
      child: Column(
        children: [
          TopSection(),
          Column(
            children: [
              ActiveTeacher(activeTeacher, activeId),
              TeacherListing(),
            ],
          )
        ],
      ),
    );
  }

  Container ActiveTeacher(String name, String BookingId) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
      color: Color(0xffF3C138),
      child: Center(
        child: Text(
          "$name  | $BookingId",
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        ),
      ),
    );
  }

  Container TeacherListing() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: sampleList.asMap().entries.map((entry) {
            int index = entry.key;
            ApprovalList item = entry.value;
            return ListItem(item, index);
          }).toList(),
        ),
      ),
    );
  }

  Container ListItem(ApprovalList item, int index) {
    bool isColored = index.isOdd;
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
      color: !isColored ? Color(0xffF6F2EA) : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.teacherName,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: item.noOfPending != 0 ? Colors.red : Colors.green,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "${item.noOfPending != 0 ? item.noOfPending.toString() : ""} ${item.noOfPending == 0 ? "Approved" : "Pending"}",
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              )
            ],
          )
        ],
      ),
    );
  }

  Container TopSection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      child: Column(
        children: [
          TopSearchBar(),
          const SizedBox(
            height: 8,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ToggleButton(
                text: "Filter",
                size: "small",
              ),
              ToggleButton(
                text: "Sort",
                size: "small",
              ),
              ],
            ),
        ],
      ),
    );
  }

  Row TopSearchBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.search,
          color: Color(0xff3D3936),
          size: 32,
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 280,
          // height: 48,
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffF3C138),
              width: 1.0,
            ),
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: const Text(
            'Search Teachers',
            style: TextStyle(
              color: Color(0xff8A8A8A),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
