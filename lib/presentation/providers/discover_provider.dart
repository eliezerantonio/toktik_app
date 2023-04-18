import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initiaLoading = true;

  List<VideoPostEntity> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPostEntity> newVideos = videoPosts
        .map((videosPost) =>
            LocalVideoModel.fromJson(videosPost).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);

    initiaLoading = false;

    notifyListeners();
  }
}
