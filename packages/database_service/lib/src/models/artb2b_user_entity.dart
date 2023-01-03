
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'artb2b_user_entity_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'artb2b_user_entity.g.dart';


@JsonSerializable(explicitToJson: true)
@CopyWith()
class Artb2bUserEntity {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String imageUrl;
  final UserStatus? userStatus;
  final Artb2bUserEntityInfo? artb2bUserEntityInfo;

  const Artb2bUserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.imageUrl,
    @JsonKey(
        defaultValue: UserStatus.initialised,
        unknownEnumValue: UserStatus.initialised
    )
    required this.userStatus,
    this.artb2bUserEntityInfo
  });

  factory Artb2bUserEntity.fromJson(Map<String, dynamic?> json)
  => _$Artb2bUserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$Artb2bUserEntityToJson(this);

}


enum UserStatus {
  @JsonValue(0)
  initialised,
  @JsonValue(1)
  personalInfo,
  @JsonValue(2)
  artInfo,
  @JsonValue(3)
  paymentInfo,
}
