import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/attendance/attendance_screen_controller.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/GPA/GPA_controller.dart';

class GPASemesterDropDown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Get list of semesters from firebase
    //For now its hardcoded
    final List<String> semesters = [
      'Semester 222',
      'Semester 223',
      'Semester 231'
    ];

    //getting the controller
    final controller = ref.read(gpaScreenControllerProvider.notifier);

    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            DropdownMenu(
              
              width: (2 / 3) * MediaQuery.of(context).size.width,
              label: const Text('Semester'),
              onSelected: (value) {
                if (value != null) {
                  controller.semester = value;
                  controller.updateGPA();
                }
              },

              //the enteries of the drop menu that we got from firebase
              dropdownMenuEntries:
                  //change ports
                  semesters.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
