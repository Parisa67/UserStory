import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:userstory/view_model/friend_view_model.dart';
part 'person_view_model.freezed.dart';
part 'person_view_model.g.dart';

@freezed
class PersonViewModel with _$PersonViewModel {
  factory PersonViewModel({
    String? guid,
    bool? isOwner,
    String? balance,
    String? picture,
    int? age,
    String? eyeColor,
    String? name,
    String? gender,
    String? company,
    String? email,
    String? phone,
    String? address,
    String? about,
    String? registered,
    double? latitude,
    double? longitude,
    List<String>? tags,
    List<FriendViewModel>? friends,
    String? greeting,
    String? favoriteFruit,
  }) = _PersonViewModel;
  factory PersonViewModel.fromJson(Map<String, dynamic> json) =>
      _$PersonViewModelFromJson(json);
}
