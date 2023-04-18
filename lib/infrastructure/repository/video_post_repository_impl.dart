import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';

import '../../domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoDataource;

  VideoPostRepositoryImpl(this.videoDataource);
  @override
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPostEntity>> getTredingVideosByPage(int page) {
    return videoDataource.getTredingVideosByPage(page);
  }
}
