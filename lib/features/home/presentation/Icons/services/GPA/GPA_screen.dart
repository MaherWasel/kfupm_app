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

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(Sizes.p12),
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
            // controller.semester.isNotEmpty?PUT WIDGET HERE:null,
          ],
        ),
      ),
    );
  }
}
