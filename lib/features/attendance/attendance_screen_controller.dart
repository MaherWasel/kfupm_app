import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/subject_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_screen_controller.g.dart';

@riverpod
class AttendanceScreenController extends _$AttendanceScreenController {
  @override
  FutureOr<void> build() {}

  //Get subjects corresponding to semester from firebase
  List<SubjectModel> getSubjects(String semesterNum) {
    switch (semesterNum) {
      case 'Term 222':
        SubjectModel math201 = SubjectModel(
            name: 'MATH201', section: 01, absences: 0, lates: 1, excuses: 0);
        SubjectModel engl102 = SubjectModel(
            name: 'ENGL102', section: 02, absences: 1, lates: 1, excuses: 0);
        SubjectModel phys102 = SubjectModel(
            name: 'PHYS102', section: 03, absences: 0, lates: 1, excuses: 1);
        SubjectModel ise291 = SubjectModel(
            name: 'ISE291', section: 04, absences: 0, lates: 0, excuses: 0);
        SubjectModel coe292 = SubjectModel(
            name: 'COE292', section: 05, absences: 2, lates: 0, excuses: 0);
        return [math201, engl102, phys102, ise291, coe292];

      case 'Term 223':
        SubjectModel engl214 = SubjectModel(
            name: 'ENGL102', section: 02, absences: 1, lates: 1, excuses: 0);
        SubjectModel ics253 = SubjectModel(
            name: 'ICS253', section: 01, absences: 3, lates: 1, excuses: 0);
        return [engl214, ics253];

      case 'Term 231':
        SubjectModel coe202 = SubjectModel(
            name: 'COE202', section: 02, absences: 1, lates: 1, excuses: 0);
        SubjectModel coe203 = SubjectModel(
            name: 'COE203', section: 01, absences: 0, lates: 0, excuses: 0);
        SubjectModel ics353 = SubjectModel(
            name: 'ICS353', section: 01, absences: 0, lates: 1, excuses: 0);
        SubjectModel ias212 = SubjectModel(
            name: 'IAS212', section: 01, absences: 1, lates: 1, excuses: 0);
        return [coe202, coe203, ics353, ias212];

      default:
        SubjectModel def = SubjectModel(
            name: 'ERR404', section: -1, absences: -1, lates: -1, excuses: -1);
        return [def];
    }
  }

  //Formats list of subjects into a list of data rows
  List<DataRow> getData(String semesterNum) {
    List<DataRow> data = [];

    //get list of subjects
    final dataRows = getSubjects(semesterNum);

    dataRows.forEach((element) {
      data.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(element.name)),
          DataCell(Text('${element.section}')),
          DataCell(Text('${element.absences}')),
          DataCell(Text('${element.lates}')),
          DataCell(Text('${element.excuses}')),
        ],
      ));
    });

    return data;
  }
}
