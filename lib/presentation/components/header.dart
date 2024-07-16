import 'package:flutter/material.dart';
import 'package:teach195/presentation/widgets/ToggleButton.dart';
import 'package:teach195/presentation/widgets/SearchBar.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxWidth: 82,
                maxHeight: 32,
              ),
              child: const Text(
                'My List',
                style: TextStyle(
                  color: Color(0xffA27A25),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            const Row(
              children: [
                Search(),
                ToggleButton(text: "Filter"),
                ToggleButton(text: "Sort")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
