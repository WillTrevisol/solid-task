import 'package:flutter/material.dart';
import 'package:solid_task/src/app/theme/color_generator.dart';

/// HomePage is only Page of the application, you can touch anywhere, 
/// on the screen to change the color, or keep it pressed to start a rainbow 
/// color animation.
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
  with SingleTickerProviderStateMixin {

  Color? backgroundColor;
  AnimationController? animationController;
  Animation<Color?>? animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 3000), 
      vsync: this,
    );

    animation = ColorGenerator.rainbowColor.animate(
      animationController ?? AnimationController(
        duration: const Duration(milliseconds: 3000), 
        vsync: this,
      ),
    );

    animation?.addListener(
      () => setState(() => backgroundColor = animation?.value),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  void changeBackgroundColor() {
    animationController?.stop();
    setState(() => backgroundColor = ColorGenerator.get());
  }

  void animateRainbowColor() {
    animationController?..forward()..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      onLongPress: animateRainbowColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
