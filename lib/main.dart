import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastructure/datasource/local_video_datasource_impl.dart';
import 'package:toktik/infrastructure/repository/video_post_repository_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

import 'presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRespository =
        VideoPostRepositoryImpl(LocalVideoDatasourceImpl());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider(videoPostRespository)..loadNextPage(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: 'Tok Tik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
