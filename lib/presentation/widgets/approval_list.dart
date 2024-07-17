import 'package:flutter/material.dart';
import 'package:teach195/data/datasources/local/approval.dart';
import 'package:teach195/domain/models/approval.dart';

class ApprovalList extends StatelessWidget {
  const ApprovalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: sampleList.asMap().entries.map((entry) {
            int index = entry.key;
            TimesheetApproval item = entry.value;
            return listItem(item, index);
          }).toList(),
        ),
      ),
    );
  }

  Container listItem(TimesheetApproval item, int index) {
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
              const SizedBox(
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
}
