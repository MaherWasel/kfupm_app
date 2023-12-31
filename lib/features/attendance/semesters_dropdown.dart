import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/attendance/attendance_screen_controller.dart';

class SemesterDropDown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Get list of semesters from firebase
    //For now its hardcoded
    final List<String> semesters = ['Term 222', 'Term 223', 'Term 231'];

    //getting the controller
    final controller = ref.read(attendanceScreenControllerProvider.notifier);

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
                  print('reached here');
                  controller.updateSemester(value);
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
