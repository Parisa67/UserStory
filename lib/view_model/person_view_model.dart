import 'package:userstory/view_model/friend_view_model.dart';

class PersonViewModel {
  String? guid;
  bool? isOwner;
  String? balance;
  String? picture;
  int? age;
  String? eyeColor;
  String? name;
  String? gender;
  String? company;
  String? email;
  String? phone;
  String? address;
  String? about;
  String? registered;
  double? latitude;
  double? longitude;
  List<String>? tags;
  List<FriendViewModel>? friends;
  String? greeting;
  String? favoriteFruit;
  PersonViewModel({
    this.guid,
    this.isOwner,
    this.balance,
    this.picture,
    this.age,
    this.eyeColor,
    this.name,
    this.gender,
    this.company,
    this.email,
    this.phone,
    this.address,
    this.about,
    this.registered,
    this.latitude,
    this.longitude,
    this.tags,
    this.friends,
    this.greeting,
    this.favoriteFruit,
  });
}
