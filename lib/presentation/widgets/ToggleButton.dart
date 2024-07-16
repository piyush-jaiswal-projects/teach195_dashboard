import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  const ToggleButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // will be implemented later
      },
      child: Container(
          width: 150,
          height: 56,
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 2,
              color: Color(0xffF3C138),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonIcon(text),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ],
          )),
    );
  }
}

Image buttonIcon(String type) {
  String path =
      type == "Filter" ? "assets/images/filter.png" : "assets/images/sort.png";
  return Image.asset(
    path,
    fit: BoxFit
        .contain, // Replace 'teach195' with your package name if different
  );
}
