import 'package:flutter/material.dart';
import 'package:teach195/presentation/components/teacher_list.dart';
import 'package:teach195/presentation/components/header.dart';
import 'package:teach195/presentation/components/top_teacher_list.dart';
import 'package:teach195/presentation/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
        children: [
          const Header(),
          TopTeacherList(),
         const TeacherList(),
        ],
          ),
        ),
      ),
    );
  }
}
