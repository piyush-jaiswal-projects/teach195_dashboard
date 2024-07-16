import 'package:flutter/material.dart';
import 'package:teach195/presentation/components/all.dart';
import 'package:teach195/presentation/components/header.dart';
import 'package:teach195/presentation/components/toprated.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3D3936),
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(8.0), 
        child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            }
          ),
        ),
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
        children: [
          Header(),
          TopRated(),
          AllTeachers(),
        ],
          ),
        ),
      ),
    );
  }
}
