
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'artb2b_user_entity_address.dart';
part 'artb2b_user_entity_info.g.dart';

@JsonSerializable(explicitToJson: true)
@CopyWith()
class Artb2bUserEntityInfo {

  final UserType? userType;
  final String? name;
  final Artb2bUserEntityAddress? address;

  const Artb2bUserEntityInfo({
    @JsonKey(defaultValue: UserType.artist,
        unknownEnumValue: UserType.artist)
    this.userType,
    this.name,
    this.address,
  });


  factory Artb2bUserEntityInfo.fromJson(Map<String, dynamic?> json)
  => _$Artb2bUserEntityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$Artb2bUserEntityInfoToJson(this);

}

enum UserType {
  @JsonValue(0)
  artist,
  @JsonValue(1)
  gallery,
  @JsonValue(2)
  unknown
}

