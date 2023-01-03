// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artb2b_user_entity_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Artb2bUserEntityInfoCWProxy {
  Artb2bUserEntityInfo userType(UserType? userType);

  Artb2bUserEntityInfo name(String? name);

  Artb2bUserEntityInfo address(Artb2bUserEntityAddress? address);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntityInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntityInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntityInfo call({
    UserType? userType,
    String? name,
    Artb2bUserEntityAddress? address,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArtb2bUserEntityInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArtb2bUserEntityInfo.copyWith.fieldName(...)`
class _$Artb2bUserEntityInfoCWProxyImpl
    implements _$Artb2bUserEntityInfoCWProxy {
  const _$Artb2bUserEntityInfoCWProxyImpl(this._value);

  final Artb2bUserEntityInfo _value;

  @override
  Artb2bUserEntityInfo userType(UserType? userType) => this(userType: userType);

  @override
  Artb2bUserEntityInfo name(String? name) => this(name: name);

  @override
  Artb2bUserEntityInfo address(Artb2bUserEntityAddress? address) =>
      this(address: address);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntityInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntityInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntityInfo call({
    Object? userType = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
  }) {
    return Artb2bUserEntityInfo(
      userType: userType == const $CopyWithPlaceholder()
          ? _value.userType
          // ignore: cast_nullable_to_non_nullable
          : userType as UserType?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as Artb2bUserEntityAddress?,
    );
  }
}

extension $Artb2bUserEntityInfoCopyWith on Artb2bUserEntityInfo {
  /// Returns a callable class that can be used as follows: `instanceOfArtb2bUserEntityInfo.copyWith(...)` or like so:`instanceOfArtb2bUserEntityInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Artb2bUserEntityInfoCWProxy get copyWith =>
      _$Artb2bUserEntityInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artb2bUserEntityInfo _$Artb2bUserEntityInfoFromJson(
        Map<String, dynamic> json) =>
    Artb2bUserEntityInfo(
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']),
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : Artb2bUserEntityAddress.fromJson(
              json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Artb2bUserEntityInfoToJson(
        Artb2bUserEntityInfo instance) =>
    <String, dynamic>{
      'userType': _$UserTypeEnumMap[instance.userType],
      'name': instance.name,
      'address': instance.address?.toJson(),
    };

const _$UserTypeEnumMap = {
  UserType.artist: 0,
  UserType.gallery: 1,
  UserType.unknown: 2,
};
