
import 'package:flutter/foundation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'artb2b_user_entity_address.g.dart';

@JsonSerializable()
@CopyWith()
class Artb2bUserEntityAddress {
  final String address;
  final String place;
  final String province;
  final String city;
  final String zipcode;
  final String number;
  final String formattedAddress;
  @JsonKey(
      fromJson: _fromJson,
      toJson: _toJson)
  GeoFirePoint? location;

  Artb2bUserEntityAddress({
    required this.address,
    required this.place,
    required this.province,
    required this.city,
    required this.zipcode,
    required this.number,
    required this.formattedAddress,
    this.location
  });

  factory Artb2bUserEntityAddress.fromJson(Map<String, dynamic?> json)
  => _$Artb2bUserEntityAddressFromJson(json);

  Map<String, dynamic> toJson() => _$Artb2bUserEntityAddressToJson(this);

  static GeoFirePoint? _fromJson(Map<String, dynamic> location) {
    return GeoFirePoint(location['geopoint'].latitude, location['geopoint'].longitude);
  }

  static Map<String, dynamic> _toJson(GeoFirePoint? location) {
    return location!.data;
  }

  @override
  String toString() {
    return "$address, ${this.number}, ${this.place}, ${this.city}, ${this.zipcode}";
  }

}

