import 'package:freezed_annotation/freezed_annotation.dart';

part 'Video.freezed.dart';

part 'Video.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String profileImg,
    required String title,
    required String playTime,
    required String subtitle,
    required String channelName,
    required int count,
    required String history,
  }) = _Video;

  factory Video.fromJson(Map<String, Object?> json) => _$VideoFromJson(json);
}
