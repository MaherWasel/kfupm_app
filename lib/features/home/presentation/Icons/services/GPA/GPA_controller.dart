import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/subject_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'GPA_controller.g.dart';

@riverpod
class GpaScreenController extends _$GpaScreenController {
  double gpa = 0.00;
  String semester = '';
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
        gpa = 3.58;
    }
    state = const AsyncValue.data(null);
  }

  //
}
