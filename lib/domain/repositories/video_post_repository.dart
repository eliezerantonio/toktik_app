import '../entities/video_post_entity.dart';

abstract class VideoPostRepository {

  Future<List<VideoPostEntity>> getFavoriteVideosByUser(String userId);

    Future<List<VideoPostEntity>> getTredingVideosByPage(int page);

}
