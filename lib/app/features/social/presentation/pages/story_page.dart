import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import '../../components/animated_bar.dart';
import '../../components/input_widget.dart';
import '../../components/user_info.dart';
import '../../data/models/story_mode.dart';
import '../../data/models/user_model.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage>
    with SingleTickerProviderStateMixin {
  TextEditingController messageController = TextEditingController();
  AnimationController? animationController;
  PageController? pageController;
  VideoPlayerController? videoPlayerController;
  int currentIndex = 0;
  final List<Story> stories = [
    const Story(
      url: 'https://picsum.photos/1080/1920',
      mediaType: MediaType.image,
      duration: Duration(seconds: 10),
      user: User(
        name: 'فارس احمد',
        profileImageUrl: 'https://picsum.photos/300/300',
      ),
    ),
    const Story(
      url:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      mediaType: MediaType.video,
      duration: Duration(seconds: 0),
      user: User(
        name: 'علي علو',
        profileImageUrl: 'https://picsum.photos/300/300',
      ),
    ),
    const Story(
      url: 'https://picsum.photos/1080/1920',
      mediaType: MediaType.image,
      duration: Duration(seconds: 10),
      user: User(
        name: 'فريد مضر',
        profileImageUrl: 'https://picsum.photos/300/300',
      ),
    ),
    const Story(
      url: 'https://picsum.photos/1080/1920',
      mediaType: MediaType.image,
      duration: Duration(seconds: 10),
      user: User(
        name: 'عمر حلاق',
        profileImageUrl: 'https://picsum.photos/300/300',
      ),
    )
  ];

  @override
  void initState() {
    pageController = PageController();
    animationController = AnimationController(vsync: this);
    // videoPlayerController = VideoPlayerController.networkUrl(
    //   Uri.parse('uri'),
    // )..initialize().then((value) => setState(() {}));
    // videoPlayerController!.play();
    final Story firstStory = stories[0];
    loadStory(story: firstStory, animateToPage: false);
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController!.stop();
        animationController!.reset();
        setState(() {
          if (currentIndex + 1 < stories.length) {
            currentIndex += 1;
            loadStory(story: stories[currentIndex]);
          } else {
            currentIndex = 0;
            loadStory(story: stories[currentIndex]);
          }
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    animationController!.dispose();
    videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final Story story = stories[currentIndex];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF6F7F9),
      body: GestureDetector(
        onTapDown: (details) => onTapDown(details, story),
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: stories.length,
              itemBuilder: (context, i) {
                final Story story = stories[i];
                if (story.mediaType == MediaType.image) {
                  return CachedNetworkImage(
                    imageUrl: story.url ?? '',
                    fit: BoxFit.cover,
                  );
                } else if (story.mediaType == MediaType.video) {
                  if (videoPlayerController != null &&
                      videoPlayerController!.value.isInitialized) {
                    return FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(
                        width: videoPlayerController!.value.size.width,
                        height: videoPlayerController!.value.size.height,
                        child: VideoPlayer(videoPlayerController!),
                      ),
                    );
                  }
                }
                return const SizedBox.shrink();
              },
            ),
            Positioned.fill(
              top: 25,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: stories
                        .asMap()
                        .map(
                          (key, value) {
                            return MapEntry(
                              key,
                              AnimatedBar(
                                animationController: animationController!,
                                postion: key,
                                currentIndex: currentIndex,
                              ),
                            );
                          },
                        )
                        .values
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 1.5,
                      vertical: 10.0,
                    ),
                    child: StoryUserInfoWidget(
                      user: story.user!,
                    ),
                  ),
                  const Expanded(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 46.h,
                      width: 372.w,
                      child: const InputWidget(
                        hint: 'ارسال رسالة',
                        showCursor: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapDown(TapDownDetails details, Story story) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;
    if (dx < screenWidth / 3) {
      if (videoPlayerController != null) {
        videoPlayerController!.pause();
      }
      setState(() {
        if (currentIndex - 1 >= 0) {
          currentIndex -= 1;
          loadStory(story: stories[currentIndex]);
        }
      });
    } else if (dx > 2 * screenWidth / 3) {
      if (videoPlayerController != null) {
        videoPlayerController!.pause();
      }
      setState(() {
        if (currentIndex + 1 < stories.length) {
          currentIndex += 1;
          loadStory(story: stories[currentIndex]);
        } else {
          currentIndex = 0;
          loadStory(story: stories[currentIndex]);
        }
      });
    } else {
      if (story.mediaType == MediaType.video) {
        if (videoPlayerController!.value.isPlaying) {
          videoPlayerController!.pause();
          animationController!.stop();
        } else {
          videoPlayerController!.play();
          animationController!.forward();
        }
      }
    }
  }

  loadStory({
    Story? story,
    bool animateToPage = true,
  }) async {
    animationController!.stop();
    animationController!.reset();
    switch (story!.mediaType) {
      case MediaType.image:
        animationController!.duration = story.duration;
        animationController!.forward();
        break;
      case MediaType.video:
        videoPlayerController = null;
        videoPlayerController?.dispose();
        videoPlayerController = VideoPlayerController.networkUrl(
          Uri.parse(story.url!),
        )..initialize().then(
            (value) {
              setState(() {});
              if (videoPlayerController!.value.isInitialized) {
                animationController!.duration =
                    videoPlayerController!.value.duration;
                videoPlayerController!.play();
                animationController!.forward();
              }
            },
          );
        break;
      case null:
        break;
    }
    if (animateToPage) {
      pageController!.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}
