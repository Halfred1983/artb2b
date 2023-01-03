// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artb2b_user_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Artb2bUserEntityCWProxy {
  Artb2bUserEntity id(String id);

  Artb2bUserEntity firstName(String firstName);

  Artb2bUserEntity lastName(String lastName);

  Artb2bUserEntity email(String email);

  Artb2bUserEntity imageUrl(String imageUrl);

  Artb2bUserEntity userStatus(UserStatus? userStatus);

  Artb2bUserEntity artb2bUserEntityInfo(
      Artb2bUserEntityInfo? artb2bUserEntityInfo);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntity call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? imageUrl,
    UserStatus? userStatus,
    Artb2bUserEntityInfo? artb2bUserEntityInfo,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArtb2bUserEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArtb2bUserEntity.copyWith.fieldName(...)`
class _$Artb2bUserEntityCWProxyImpl implements _$Artb2bUserEntityCWProxy {
  const _$Artb2bUserEntityCWProxyImpl(this._value);

  final Artb2bUserEntity _value;

  @override
  Artb2bUserEntity id(String id) => this(id: id);

  @override
  Artb2bUserEntity firstName(String firstName) => this(firstName: firstName);

  @override
  Artb2bUserEntity lastName(String lastName) => this(lastName: lastName);

  @override
  Artb2bUserEntity email(String email) => this(email: email);

  @override
  Artb2bUserEntity imageUrl(String imageUrl) => this(imageUrl: imageUrl);

  @override
  Artb2bUserEntity userStatus(UserStatus? userStatus) =>
      this(userStatus: userStatus);

  @override
  Artb2bUserEntity artb2bUserEntityInfo(
          Artb2bUserEntityInfo? artb2bUserEntityInfo) =>
      this(artb2bUserEntityInfo: artb2bUserEntityInfo);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Artb2bUserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Artb2bUserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  Artb2bUserEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? userStatus = const $CopyWithPlaceholder(),
    Object? artb2bUserEntityInfo = const $CopyWithPlaceholder(),
  }) {
    return Artb2bUserEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          // ignore: unnecessary_non_null_assertion
          ? _value.id!
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      firstName: firstName == const $CopyWithPlaceholder() || firstName == null
          // ignore: unnecessary_non_null_assertion
          ? _value.firstName!
          // ignore: cast_nullable_to_non_nullable
          : firstName as String,
      lastName: lastName == const $CopyWithPlaceholder() || lastName == null
          // ignore: unnecessary_non_null_assertion
          ? _value.lastName!
          // ignore: cast_nullable_to_non_nullable
          : lastName as String,
      email: email == const $CopyWithPlaceholder() || email == null
          // ignore: unnecessary_non_null_assertion
          ? _value.email!
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      imageUrl: imageUrl == const $CopyWithPlaceholder() || imageUrl == null
          // ignore: unnecessary_non_null_assertion
          ? _value.imageUrl!
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String,
      userStatus: userStatus == const $CopyWithPlaceholder()
          ? _value.userStatus
          // ignore: cast_nullable_to_non_nullable
          : userStatus as UserStatus?,
      artb2bUserEntityInfo: artb2bUserEntityInfo == const $CopyWithPlaceholder()
          ? _value.artb2bUserEntityInfo
          // ignore: cast_nullable_to_non_nullable
          : artb2bUserEntityInfo as Artb2bUserEntityInfo?,
    );
  }
}

extension $Artb2bUserEntityCopyWith on Artb2bUserEntity {
  /// Returns a callable class that can be used as follows: `instanceOfArtb2bUserEntity.copyWith(...)` or like so:`instanceOfArtb2bUserEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Artb2bUserEntityCWProxy get copyWith => _$Artb2bUserEntityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artb2bUserEntity _$Artb2bUserEntityFromJson(Map<String, dynamic> json) =>
    Artb2bUserEntity(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      imageUrl: json['imageUrl'] as String,
      userStatus: $enumDecodeNullable(_$UserStatusEnumMap, json['userStatus']),
      artb2bUserEntityInfo: json['artb2bUserEntityInfo'] == null
          ? null
          : Artb2bUserEntityInfo.fromJson(
              json['artb2bUserEntityInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Artb2bUserEntityToJson(Artb2bUserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'userStatus': _$UserStatusEnumMap[instance.userStatus],
      'artb2bUserEntityInfo': instance.artb2bUserEntityInfo?.toJson(),
    };

const _$UserStatusEnumMap = {
  UserStatus.initialised: 0,
  UserStatus.personalInfo: 1,
  UserStatus.artInfo: 2,
  UserStatus.paymentInfo: 3,
};
