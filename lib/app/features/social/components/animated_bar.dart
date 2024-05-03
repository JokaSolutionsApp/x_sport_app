import 'package:flutter/material.dart';

class AnimatedBar extends StatelessWidget {
  final AnimationController animationController;
  final int postion;
  final int currentIndex;
  const AnimatedBar({
    super.key,
    required this.animationController,
    required this.postion,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                buildContainer(
                  double.infinity,
                  postion < currentIndex
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                postion == currentIndex
                    ? AnimatedBuilder(
                        animation: animationController,
                        builder: (context, child) {
                          return buildContainer(
                            constraints.maxWidth * animationController.value,
                            Colors.white,
                          );
                        },
                      )
                    : const SizedBox.shrink()
              ],
            );
          },
        ),
      ),
    );
  }

  buildContainer(double width, Color color) {
    return Container(
      height: 5,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
