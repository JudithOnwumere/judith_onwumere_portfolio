// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';

class HoverLinkTwo extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final int currentIndex;

  const HoverLinkTwo({
    super.key,
    required this.onTap,
    required this.text,
    required this.currentIndex,
  });

  @override
  State<HoverLinkTwo> createState() => _HoverLinkTwoState();
}

class _HoverLinkTwoState extends State<HoverLinkTwo> {
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
          color: (widget.currentIndex == 2 || widget.currentIndex == 3)
              ? AppColours.otherColour
              : _isHovered
                  ? AppColours.hoverTextColour // Active or hovered color
                  : AppColours.textColour,
          fontWeight: _isHovered ? FontWeight.bold : FontWeight.normal,
          decoration: TextDecoration.underline,
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
