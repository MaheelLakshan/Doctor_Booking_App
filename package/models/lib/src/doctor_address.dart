import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DoctorAddress extends Equatable {
  final String id;
  final String doctorId;
  final LatLng latLon;
  final String streetAddress;
  final String streetNumber;
  final String city;
  final String state;
  final String country;
  final String postalCode;

  const DoctorAddress({
    required this.id,
    required this.doctorId,
    required this.latLon,
    required this.streetAddress,
    required this.streetNumber,
    required this.city,
    required this.state,
    required this.country,
    required this.postalCode,
  });

  DoctorAddress copyWith({
    String? id,
    String? doctId,
    LatLng? latLon,
    String? streetAddress,
    String? streetNumber,
    String? city,
    String? state,
    String? country,
    String? postalCode,
  }) {
    return DoctorAddress(
      id: id ?? this.id,
      doctorId: doctorId ?? this.doctorId,
      latLon: latLon ?? this.latLon,
      streetAddress: streetAddress ?? this.streetAddress,
      streetNumber: streetNumber ?? this.streetNumber,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
    );
  }

  @override
  List<Object?> get props => [
        id,
        doctorId,
        latLon,
        streetAddress,
        streetNumber,
        city,
        state,
        country,
        postalCode,
      ];

  static const sampleAddresses = [
    DoctorAddress(
      id: '1',
      doctorId: '1',
      latLon: LatLng(25.27865, 66.356),
      streetAddress: 'Kirinda',
      streetNumber: '124 ',
      city: 'Matara',
      state: 'Sourthern',
      country: 'Sri Lanka',
      postalCode: '1245',
    )
  ];
}
