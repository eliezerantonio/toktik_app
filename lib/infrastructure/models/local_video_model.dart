import '/domain/entities/video_post_entity.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'Sem nome',
        videoUrl: json['videoUrl'],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  VideoPostEntity toVideoPostEntity() => VideoPostEntity(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
