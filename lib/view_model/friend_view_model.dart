import 'package:freezed_annotation/freezed_annotation.dart';
part 'friend_view_model.freezed.dart';
part 'friend_view_model.g.dart';

@freezed
class FriendViewModel with _$FriendViewModel {
  factory FriendViewModel({int? id, String? guid, String? name}) =
      _FriendViewModel;

  factory FriendViewModel.fromJson(Map<String, dynamic> json) =>
      _$FriendViewModelFromJson(json);
}
