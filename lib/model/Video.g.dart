// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      profileImg: json['profileImg'] as String,
      title: json['title'] as String,
      playTime: json['playTime'] as String,
      subtitle: json['subtitle'] as String,
      channelName: json['channelName'] as String,
      count: json['count'] as int,
      history: json['history'] as String,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'profileImg': instance.profileImg,
      'title': instance.title,
      'playTime': instance.playTime,
      'subtitle': instance.subtitle,
      'channelName': instance.channelName,
      'count': instance.count,
      'history': instance.history,
    };
