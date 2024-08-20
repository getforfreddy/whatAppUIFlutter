import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class FullScreenStatusView extends StatelessWidget {
  final List<String> statusImages;

  FullScreenStatusView({required this.statusImages});

  @override
  Widget build(BuildContext context) {
    final storyController = StoryController();

    return Scaffold(
      body: StoryView(
        storyItems: statusImages
            .map((imageUrl) => StoryItem.pageImage(
          url: imageUrl,
          controller: storyController,
          duration: Duration(seconds: 5),
        ))
            .toList(),
        controller: storyController,
        repeat: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
