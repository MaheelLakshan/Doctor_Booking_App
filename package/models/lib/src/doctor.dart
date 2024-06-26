import 'package:equatable/equatable.dart';
import 'package:models/src/doctor_address.dart';

import 'package:models/src/doctor_category.dart';
import 'package:models/src/doctor_package.dart';
import 'package:models/src/doctor_working_hours.dart';

class Doctor extends Equatable {
  final String id;
  final String name;
  final String bio;
  final String profileImageUrl;
  final DoctorCategory category;
  final DoctorAddress address;
  final List<DoctorPackage> package;
  final List<DoctorWorkingHours> workingHours;
  final double rating;
  final int reviewCount;
  final int patientCount;

  const Doctor({
    required this.id,
    required this.name,
    required this.bio,
    required this.profileImageUrl,
    required this.category,
    required this.workingHours,
    required this.address,
    required this.package,
    this.rating = 0.0,
    this.patientCount = 0,
    this.reviewCount = 0,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        bio,
        profileImageUrl,
        category,
        workingHours,
        address,
        package,
        rating,
        patientCount,
        reviewCount
      ];

  static final sampleDoctors = [
    Doctor(
        id: '1',
        name: 'Maheel',
        bio: 'Nice',
        profileImageUrl:
            'https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg',
        category: DoctorCategory.familyMedicine,
        workingHours: DoctorWorkingHours.sampleDoctorWorkingHours,
        address: DoctorAddress.sampleAddresses[0],
        package: DoctorPackage.samplePackages,
        rating: 4.5,
        reviewCount: 10,
        patientCount: 200),
    Doctor(
        id: '2',
        name: 'Lakshan',
        bio: 'Nice',
        profileImageUrl:
            'https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg',
        category: DoctorCategory.cardiology,
        workingHours: DoctorWorkingHours.sampleDoctorWorkingHours,
        address: DoctorAddress.sampleAddresses[0],
        package: DoctorPackage.samplePackages,
        rating: 5.5,
        reviewCount: 20,
        patientCount: 100),
  ];
}
