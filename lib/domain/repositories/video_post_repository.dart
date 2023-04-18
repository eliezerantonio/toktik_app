import '../entities/video_post_entity.dart';

abstract class VideoPostRepository {

  Future<VideoPostEntity> getFavoriteVideosByUser(String userId);

  Future<VideoPostEntity> getTredingVideosByPage(int page);
  
}
