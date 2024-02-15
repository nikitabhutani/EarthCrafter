import 'package:earthcrafter/common/widgets/CircularContainer.dart';
import 'package:earthcrafter/common/widgets/curved_edges.dart';
import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        child: ECurvedEdgesWidget(child: child),
      )
    ]))); // ECurvedEdgesWidget
  }
}

class ECurvedEdgesWidget extends StatelessWidget {
  const ECurvedEdgesWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: Container(
        color: EColors.primary, // Replace with your color
    
        child: Stack(
          children: [
            // Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: ECircularContainer(
                backgroundColor: EColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ECircularContainer(
                backgroundColor: EColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ), // Stack
      ), // Container
    );
  }
}
