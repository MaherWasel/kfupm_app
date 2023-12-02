import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/attendance/attendance_screen_controller.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';
import 'package:kfupm_app/features/attendance/semesters_dropdown.dart';

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(attendanceScreenControllerProvider);
    final controller = ref.read(attendanceScreenControllerProvider.notifier);

    return  Column(
        children: [
          SemesterDropDown(),
          FittedBox(
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('Subject')),
                DataColumn(label: Text('Section')),
                DataColumn(label: Text('Absences')),
                DataColumn(label: Text('Lates')),
                DataColumn(label: Text('Excuses')),
              ],
              rows: controller.getData(),
            ),
          )
        ],);
      
  }
}
