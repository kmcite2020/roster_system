import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/features/ui.dart';
import '../doctors_manager/doctors_manager.dart';

part 'doctor.g.dart';
part 'doctor.freezed.dart';

@freezed
class Doctor with _$Doctor {
  const Doctor._();
  const factory Doctor({
    required final String id,
    @Default('') final String name,
    @Default(Gender.male) final Gender gender,
    required final DateTime dateOfBirth,
    @Default('') final String qualifications,
    @Default('') final String contactDetails,
    @Default('') final String profilePicture,
    @Default('') final String departments,
    @Default(true) final bool editing,
  }) = _Doctor;

  Uint8List? get image {
    if (profilePicture != '') {
      return File(profilePicture).readAsBytesSync();
    }
    return null;
  }

  factory Doctor.fromJson(json) => _$DoctorFromJson(json);
  factory Doctor.get({required String id}) => doctorsManager.get(id);
  static List<Doctor> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => Doctor.fromJson(e)).toList();
  }

  static String toListJson(List<Doctor> doctors) {
    final List result = doctors.map((e) => e.toJson()).toList();
    return json.encode(result);
  }

  factory Doctor.init() => Doctor(
        id: randomID,
        dateOfBirth: DateTime(1995),
      );

//   Name
// Gender
// Date of Birth
// Qualifications

// Contact Details
// Phone number
// Emails
// Address

// Profile Picture

// Department - one or more
}

enum Gender { male, female }
