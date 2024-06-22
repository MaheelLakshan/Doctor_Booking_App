import 'package:models/src/consultation_mode.dart';

class DoctorPackage {
  final String id;
  final String doctorId;
  final String packageName;
  final String description;
  final Duration duration;
  final double price;
  final ConsultationMode consultationmode;

  const DoctorPackage({
    required this.id,
    required this.doctorId,
    required this.packageName,
    required this.description,
    required this.duration,
    required this.price,
    required this.consultationmode,
  });

  static const samplePackages = [
    DoctorPackage(
      id: '1',
      doctorId: '1',
      packageName: 'Basic',
      description: 'Basic Consulting package',
      duration: Duration(minutes: 30),
      price: 1000,
      consultationmode: ConsultationMode.video,
    ),
    DoctorPackage(
      id: '2',
      doctorId: '1',
      packageName: 'standard',
      description: 'standard Consulting package',
      duration: Duration(minutes: 60),
      price: 5000,
      consultationmode: ConsultationMode.inPerson,
    ),
    DoctorPackage(
      id: '3',
      doctorId: '1',
      packageName: 'premimum',
      description: 'premimum Consulting package',
      duration: Duration(minutes: 90),
      price: 10000,
      consultationmode: ConsultationMode.video,
    ),
  ];
}
