import 'package:flutter/material.dart';
import 'package:tok_tik/infrastructure/local_video_model.dart';

import '../../domain/entity/video_post.dart';
import '../../share/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool isLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final List<VideoPost> newPosts = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newPosts);
    isLoading = false;
    notifyListeners();
  }
}
