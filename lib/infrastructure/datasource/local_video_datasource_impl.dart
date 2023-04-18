import 'package:toktik/domain/entities/video_post_entity.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

import '../../domain/datasource/video_posts_datasource.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTredingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final newVideos = videoPosts
        .map((videosPost) =>
            LocalVideoModel.fromJson(videosPost).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
