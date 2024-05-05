import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/constance/app_constance.dart';

class VideoPlayerFullScreenWidget extends StatefulWidget {
  const VideoPlayerFullScreenWidget({
    super.key,
    required this.videos,
  });
  final List<String> videos;

  @override
  State<VideoPlayerFullScreenWidget> createState() =>
      _VideoPlayerFullScreenWidgetState();
}

class _VideoPlayerFullScreenWidgetState
    extends State<VideoPlayerFullScreenWidget> {
  VideoPlayerController? videoPlayerController;
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videos.first),
    )
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then(
        (value) => videoPlayerController!.play(),
      );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      videoPlayerController!.value.isInitialized
          ? ColoredBox(
              color: XColors.Background_Color1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  buildfullscreen()!,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 8.0,
                      ),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: XColors.grey.withOpacity(0.52),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.close,
                            color: Colors.white.withOpacity(0.52),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const ColoredBox(
              color: XColors.Background_Color1,
              child: Center(
                child: CircularProgressIndicator(
                  color: XColors.primary,
                ),
              ),
            );

  Widget? buildfullscreen() {
    final size = videoPlayerController!.value.size;
    final width = size.width;
    final height = size.height;
    return FittedBox(
      alignment: Alignment.center,
      child: SizedBox(
        width: width,
        height: height,
        child: AspectRatio(
          aspectRatio: videoPlayerController!.value.aspectRatio,
          child: VideoPlayer(
            videoPlayerController!,
          ),
        ),
      ),
    );
  }
}
