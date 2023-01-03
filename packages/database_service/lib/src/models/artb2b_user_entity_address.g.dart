// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artb2b_user_entity_address.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Artb2bUserEntityAddressCWProxy {
  Artb2bUserEntityAddress address(String address);

  Artb2bUserEntityAddress place(String place);

  Artb2bUserEntityAddress province(String province);

  Artb2bUserEntityAddress city(String city);

  Artb2bUserEntityAddress zipcode(String zipcode);

  Artb2bUserEntityAddress number(String number);

  Artb2bUserEntityAddress formattedAddress(String formattedAddress);

  Artb2bUserEntityAddress location(GeoFirePoint? location);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntityAddress(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntityAddress(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntityAddress call({
    String? address,
    String? place,
    String? province,
    String? city,
    String? zipcode,
    String? number,
    String? formattedAddress,
    GeoFirePoint? location,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArtb2bUserEntityAddress.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArtb2bUserEntityAddress.copyWith.fieldName(...)`
class _$Artb2bUserEntityAddressCWProxyImpl
    implements _$Artb2bUserEntityAddressCWProxy {
  const _$Artb2bUserEntityAddressCWProxyImpl(this._value);

  final Artb2bUserEntityAddress _value;

  @override
  Artb2bUserEntityAddress address(String address) => this(address: address);

  @override
  Artb2bUserEntityAddress place(String place) => this(place: place);

  @override
  Artb2bUserEntityAddress province(String province) => this(province: province);

  @override
  Artb2bUserEntityAddress city(String city) => this(city: city);

  @override
  Artb2bUserEntityAddress zipcode(String zipcode) => this(zipcode: zipcode);

  @override
  Artb2bUserEntityAddress number(String number) => this(number: number);

  @override
  Artb2bUserEntityAddress formattedAddress(String formattedAddress) =>
      this(formattedAddress: formattedAddress);

  @override
  Artb2bUserEntityAddress location(GeoFirePoint? location) =>
      this(location: location);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntityAddress(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntityAddress(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntityAddress call({
    Object? address = const $CopyWithPlaceholder(),
    Object? place = const $CopyWithPlaceholder(),
    Object? province = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? zipcode = const $CopyWithPlaceholder(),
    Object? number = const $CopyWithPlaceholder(),
    Object? formattedAddress = const $CopyWithPlaceholder(),
    Object? location = const $CopyWithPlaceholder(),
  }) {
    return Artb2bUserEntityAddress(
      address: address == const $CopyWithPlaceholder() || address == null
          // ignore: unnecessary_non_null_assertion
          ? _value.address!
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      place: place == const $CopyWithPlaceholder() || place == null
          // ignore: unnecessary_non_null_assertion
          ? _value.place!
          // ignore: cast_nullable_to_non_nullable
          : place as String,
      province: province == const $CopyWithPlaceholder() || province == null
          // ignore: unnecessary_non_null_assertion
          ? _value.province!
          // ignore: cast_nullable_to_non_nullable
          : province as String,
      city: city == const $CopyWithPlaceholder() || city == null
          // ignore: unnecessary_non_null_assertion
          ? _value.city!
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      zipcode: zipcode == const $CopyWithPlaceholder() || zipcode == null
          // ignore: unnecessary_non_null_assertion
          ? _value.zipcode!
          // ignore: cast_nullable_to_non_nullable
          : zipcode as String,
      number: number == const $CopyWithPlaceholder() || number == null
          // ignore: unnecessary_non_null_assertion
          ? _value.number!
          // ignore: cast_nullable_to_non_nullable
          : number as String,
      formattedAddress: formattedAddress == const $CopyWithPlaceholder() ||
              formattedAddress == null
          // ignore: unnecessary_non_null_assertion
          ? _value.formattedAddress!
          // ignore: cast_nullable_to_non_nullable
          : formattedAddress as String,
      location: location == const $CopyWithPlaceholder()
          ? _value.location
          // ignore: cast_nullable_to_non_nullable
          : location as GeoFirePoint?,
    );
  }
}

extension $Artb2bUserEntityAddressCopyWith on Artb2bUserEntityAddress {
  /// Returns a callable class that can be used as follows: `instanceOfArtb2bUserEntityAddress.copyWith(...)` or like so:`instanceOfArtb2bUserEntityAddress.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Artb2bUserEntityAddressCWProxy get copyWith =>
      _$Artb2bUserEntityAddressCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artb2bUserEntityAddress _$Artb2bUserEntityAddressFromJson(
        Map<String, dynamic> json) =>
    Artb2bUserEntityAddress(
      address: json['address'] as String,
      place: json['place'] as String,
      province: json['province'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      number: json['number'] as String,
      formattedAddress: json['formattedAddress'] as String,
      location: Artb2bUserEntityAddress._fromJson(
          json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Artb2bUserEntityAddressToJson(
        Artb2bUserEntityAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'place': instance.place,
      'province': instance.province,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'number': instance.number,
      'formattedAddress': instance.formattedAddress,
      'location': Artb2bUserEntityAddress._toJson(instance.location),
    };
