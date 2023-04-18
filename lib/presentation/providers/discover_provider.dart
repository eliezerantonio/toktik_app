import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  DiscoverProvider(this.videoPostRepository);

  final VideoPostRepository videoPostRepository;
  bool initiaLoading = true;

  List<VideoPostEntity> videos = [];

  Future<void> loadNextPage() async {
    final newVideos = await videoPostRepository.getTredingVideosByPage(1);
    videos.addAll(newVideos);

    initiaLoading = false;

    notifyListeners();
  }
}
