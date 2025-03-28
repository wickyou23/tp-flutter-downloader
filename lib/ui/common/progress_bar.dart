import 'dart:math';

import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final double progress;
  final double height;
  final Color backgroundColor;
  final Color progressColor;
  final String? label;

  const ProgressBar({
    required this.progress,
    this.height = 10,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.blue,
    this.label,
    super.key,
  });

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: double.infinity,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                FractionallySizedBox(
                  widthFactor: max(0, min(1, widget.progress)),
                  child: FadeTransition(
                    opacity: _animation,
                    child: Container(
                      height: widget.height,
                      color: widget.progressColor,
                    ),
                  ),
                ),
                if (widget.label != null)
                  Center(
                    child: Text(
                      widget.label!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
