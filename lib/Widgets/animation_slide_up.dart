import 'package:flutter/material.dart';

class AnimationSlideUp extends StatefulWidget {
  const AnimationSlideUp({Key? key}) : super(key: key);

  @override
  State<AnimationSlideUp> createState() => _AnimationSlideUpState();
}

class _AnimationSlideUpState extends State<AnimationSlideUp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _position;
  late Animation<double> _opacity;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _position = Tween<double>(begin: 20, end: 30)
        .animate(CurvedAnimation(parent: _controller, curve: Interval(0, 1)))
      ..addListener(() {
        setState(() {});
      });

    _opacity = Tween<double>(begin: 1, end: 0)
        .animate(CurvedAnimation(parent: _controller, curve: Interval(.5, 1)))
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: _position.value),
      child: FloatingActionButton(
        backgroundColor: Color(0xFF3E5165),
        onPressed: () {},
        child: Opacity(
          opacity: _opacity.value,
          child: const Icon(
            Icons.keyboard_double_arrow_up,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
