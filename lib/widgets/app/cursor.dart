// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomCursor extends StatefulWidget {
  final Widget child;
  final String imgPath;

  const CustomCursor({super.key, required this.child, required this.imgPath});
  @override
  _CustomCursorState createState() => _CustomCursorState();
}

class _CustomCursorState extends State<CustomCursor> {
  Offset _mousePosition = Offset.zero;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main Ink widget with MouseRegion
        MouseRegion(
          onHover: (event) {
            setState(() {
              _mousePosition = event.position;
            });
          },
          onEnter: (_) {
            setState(() {
              _isHovering = true;
            });
          },
          onExit: (_) {
            setState(() {
              _isHovering = false;
            });
          },
          child: widget.child,
        ),

        // Custom cursor image
        if (_isHovering)
          Positioned(
            left: _mousePosition.dx - 100,
            top: _mousePosition.dy - 100,
            child: IgnorePointer(
              child: Image.asset(
                widget.imgPath,
                height: 48, // Adjust cursor size
                width: 48,
              ),
            ),
          ),
      ],
    );
  }
}
