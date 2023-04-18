import 'package:toktik/domain/entities/video_post_entity.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId);
  Future<List<VideoPostEntity>> getTredingVideosByPage(int page);
}
