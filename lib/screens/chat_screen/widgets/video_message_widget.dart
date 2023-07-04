import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatefulWidget {
  final String videoUrl;
  const VideoView({super.key, required this.videoUrl});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late VideoPlayerController _controller;
  int currIndex = 1;
  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  _initPlayer() {
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          currIndex = 0;
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 200,
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: IndexedStack(
          alignment: AlignmentDirectional.topStart,
          index: currIndex,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: GestureDetector(
                  onTap: _togglePlay,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            const Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }

  _togglePlay() {
    _controller.value.isPlaying ? _controller.pause() : _controller.play();
  }
}
