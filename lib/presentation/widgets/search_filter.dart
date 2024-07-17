import 'package:flutter/material.dart';
import 'toggle_button.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      child: Column(
        children: [
          Row(
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
          ),
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
}
