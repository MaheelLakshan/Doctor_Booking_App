import 'package:models/models.dart';

class DoctorRepository {
  const DoctorRepository();

  Future<List<DoctorCategory>> fetchDoctorCategories() async {
    throw UnimplementedError();
  }

  Future<List<Doctor>> fetchDoctors() async {
    throw UnimplementedError();
  }

  Future<List<Doctor>> fetchDoctorsByCategory(String categoryId) async {
    throw UnimplementedError();
  }

  Future<Doctor?> fetchDoctorById(String doctorId) async {
    throw UnimplementedError();
  }
}
