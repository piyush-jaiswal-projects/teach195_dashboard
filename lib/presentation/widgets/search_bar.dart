import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 56,
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        color: Color(0xffF6F2EA),
        border: Border(
          bottom: BorderSide(
            color: Color(0xffA27A25),
            width: 1.0,
          ),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0xffA27A25),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Search',
                style: TextStyle(
                  color: Color(0xff3D3936),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Color(0xffA27A25),
          ),
        ],
      ),
    );
  }
}
