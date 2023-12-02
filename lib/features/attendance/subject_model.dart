// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SubjectModel {
  final String name;
  final int section;
  final int absences;
  final int lates;
  final int excuses;

  SubjectModel({
    required this.name,
    required this.section,
    required this.absences,
    required this.lates,
    required this.excuses,
  });

  SubjectModel copyWith({
    String? name,
    int? section,
    int? absences,
    int? lates,
    int? excuses,
  }) {
    return SubjectModel(
      name: name ?? this.name,
      section: section ?? this.section,
      absences: absences ?? this.absences,
      lates: lates ?? this.lates,
      excuses: excuses ?? this.excuses,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'section': section,
      'absences': absences,
      'lates': lates,
      'excuses': excuses,
    };
  }

  factory SubjectModel.fromMap(Map<String, dynamic> map) {
    return SubjectModel(
      name: map['name'] as String,
      section: map['section'] as int,
      absences: map['absences'] as int,
      lates: map['lates'] as int,
      excuses: map['excuses'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubjectModel.fromJson(String source) =>
      SubjectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubjectModel(name: $name, section: $section, absences: $absences, lates: $lates, excuses: $excuses)';
  }

  @override
  bool operator ==(covariant SubjectModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.section == section &&
        other.absences == absences &&
        other.lates == lates &&
        other.excuses == excuses;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        section.hashCode ^
        absences.hashCode ^
        lates.hashCode ^
        excuses.hashCode;
  }
}
