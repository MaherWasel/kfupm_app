import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/GPA/GPA_controller.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/GPA/GPA_dropdown.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/GPA/GPA_widget.dart';

class GradesAndGpa extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gpaScreenControllerProvider);
    final controller = ref.read(gpaScreenControllerProvider.notifier);
    final deviceSizes = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(255, 9, 83, 11),
        child: ListView(
          children: [
            const SizedBox(
              height: Sizes.p12,
            ),
            Center(
              child: Text(
                "Grades and GPA ",
                style: midTextL,
              ),
            ),
            GPASemesterDropDown(),
            controller.semester.isNotEmpty
                ? GpaWidget(
                    gpa: controller.gpa,
                  )
                : const Spacer(),
            const Divider(),
            controller.semester.isEmpty
                ? Text("Empty")
                : Expanded(
                    child: ListView.builder(
                        itemCount: controller.subjects.length,
                        itemBuilder: (context, index) {
                          final subject = controller.subjects[index].subject;
                          final grade = controller.subjects[index].grade;
                          print(subject);
                          return Container(
                            width: deviceSizes.width / 2,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 6, 75, 8),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomRight: Radius.circular(35),
                                    bottomLeft: Radius.circular(7),
                                    topRight: Radius.circular(7))),
                            child: Row(
                              children: [
                                Text(
                                  subject,
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(grade)
                              ],
                            ),
                          );
                        }),
                  )
          ],
        ),
      ),
    );
  }
}
