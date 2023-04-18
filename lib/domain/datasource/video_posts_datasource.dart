import 'package:toktik/domain/entities/video_post_entity.dart';

abstract class VideoPostDatasource {
  Future<VideoPostEntity> getFavoriteVideosByUser(String userId);
  Future<VideoPostEntity> getTredingVideosByPage(int page);



}
