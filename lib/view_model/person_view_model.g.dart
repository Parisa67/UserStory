// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonViewModel _$$_PersonViewModelFromJson(Map<String, dynamic> json) =>
    _$_PersonViewModel(
      guid: json['guid'] as String?,
      isOwner: json['isOwner'] as bool?,
      balance: json['balance'] as String?,
      picture: json['picture'] as String?,
      age: json['age'] as int?,
      eyeColor: json['eyeColor'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      company: json['company'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      about: json['about'] as String?,
      registered: json['registered'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      friends: (json['friends'] as List<dynamic>?)
          ?.map((e) => FriendViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      greeting: json['greeting'] as String?,
      favoriteFruit: json['favoriteFruit'] as String?,
    );

Map<String, dynamic> _$$_PersonViewModelToJson(_$_PersonViewModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'isOwner': instance.isOwner,
      'balance': instance.balance,
      'picture': instance.picture,
      'age': instance.age,
      'eyeColor': instance.eyeColor,
      'name': instance.name,
      'gender': instance.gender,
      'company': instance.company,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'about': instance.about,
      'registered': instance.registered,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tags': instance.tags,
      'friends': instance.friends,
      'greeting': instance.greeting,
      'favoriteFruit': instance.favoriteFruit,
    };
