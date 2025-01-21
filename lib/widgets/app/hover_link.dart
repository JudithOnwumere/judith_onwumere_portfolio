// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';

class HoverLink extends StatefulWidget {
  final String text;
  final int currentIndex; // Current index of the active link
  final int linkIndex; // Index of this specific link
  final VoidCallback onTap;

  const HoverLink({
    super.key,
    required this.onTap,
    required this.text,
    required this.currentIndex,
    required this.linkIndex,
  });

  @override
  _HoverLinkState createState() => _HoverLinkState();
}

class _HoverLinkState extends State<HoverLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (isHovered) {
        setState(() => _isHovered = isHovered);
      },
      child: Text(
        widget.text,
        style: AppTextStyles.navLinks.copyWith(
          // Apply active color if the current index matches the link index
          color: (widget.currentIndex == 2)
              ? AppColours.otherColour
              : widget.currentIndex == widget.linkIndex || _isHovered
                  ? AppColours.hoverTextColour // Active or hovered color
                  : AppColours.textColour,
          fontWeight: widget.currentIndex == widget.linkIndex || _isHovered
              ? FontWeight.bold
              : FontWeight.normal,
          decoration: widget.currentIndex == widget.linkIndex
              ? TextDecoration.underline
              : TextDecoration.none,
          decorationColor: (widget.currentIndex == 2)
              ? AppColours.otherColour
              : _isHovered
                  ? AppColours.hoverTextColour // Active or hovered color
                  : AppColours.textColour,
        ),
      ),
    );
  }
}
