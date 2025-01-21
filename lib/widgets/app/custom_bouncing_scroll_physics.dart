import 'package:flutter/widgets.dart';

class CustomBouncingScrollPhysics extends BouncingScrollPhysics {
  final double frictFactor;
  final double springFactor;

  const CustomBouncingScrollPhysics({
    super.parent,
    this.frictFactor = 0.5, // Controls friction
    this.springFactor = 1.0, // Controls the bounce intensity
  });

  @override
  CustomBouncingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomBouncingScrollPhysics(
      parent: buildParent(ancestor),
      frictFactor: frictFactor,
      springFactor: springFactor,
    );
  }

  @override
  SpringDescription get spring {
    // Access the default spring and scale it with springFactor
    final originalSpring = super.spring;
    return SpringDescription(
      mass: originalSpring.mass,
      stiffness:
          originalSpring.stiffness * springFactor, // Adjust the stiffness
      damping: originalSpring.damping * frictFactor, // Adjust the damping
    );
  }
}
