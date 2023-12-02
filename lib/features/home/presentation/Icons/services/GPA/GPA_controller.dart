import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/subject_model.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/GPA/GPA_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GPA_controller.g.dart';

@riverpod
class GpaScreenController extends _$GpaScreenController {
  double gpa = 0.00;
  String semester = '';
  List<GpaModel> subjects = [];
  @override
  FutureOr<void> build() {}

  //This function updates the GPA when we choose a semester
  void updateGPA() {
    state = const AsyncValue.loading();
    switch (semester) {
      case 'Semester 222':
        gpa = 3.67;
        break;
      case 'Semester 223':
        gpa = 3.85;
        break;
      case 'Semester 231':
        gpa = 3.21;
        break;
      default:
        gpa = 3.96;
    }
    state = const AsyncValue.data(null);
  }

  void updateSubjects() {
    switch (semester) {
      case 'Semester 222':
        subjects = [
          GpaModel(Subject: 'MATH201', grade: 'C+'),
          GpaModel(Subject: 'PHYS102', grade: 'B'),
          GpaModel(Subject: 'ICS104', grade: 'A+'),
          GpaModel(Subject: 'IAS101', grade: 'A+')
        ];
        break;

      case 'Semester 223':
        subjects = [
          GpaModel(Subject: 'ISE291', grade: 'A+'),
          GpaModel(Subject: 'COE292', grade: 'A'),
        ];
        break;

      case 'Semester 231':
        subjects = [
          GpaModel(Subject: 'COE202', grade: 'D+'),
          GpaModel(Subject: 'COE203', grade: 'F'),
          GpaModel(Subject: 'IAS212', grade: 'F'),
          GpaModel(Subject: 'ICS253', grade: 'D'),
        ];
        break;

      default:
        subjects = [
          GpaModel(Subject: 'ISE291', grade: 'A+'),
          GpaModel(Subject: 'COE292', grade: 'A'),
          GpaModel(Subject: 'ICS104', grade: 'A+'),
          GpaModel(Subject: 'IAS101', grade: 'A+')
        ];
    }
  }
  //
}
