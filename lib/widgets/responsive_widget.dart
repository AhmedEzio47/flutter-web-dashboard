import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.smallScreen,
  }) : super(key: key);

  final Widget largeScreen;
  final Widget smallScreen;
  static ScreenSizes screenSize(BuildContext context) {
    if (MediaQuery.of(context).size.width > kLargeScreenSize) {
      return ScreenSizes.large;
    }
    if (MediaQuery.of(context).size.width > kSmallScreenSize) {
      return ScreenSizes.small;
    }

    return ScreenSizes.large;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;
      print(_width);
      if (_width >= kLargeScreenSize) {
        return largeScreen;
      }
      if (_width >= kMediumScreenSize) {
        return largeScreen;
      }
      if (_width >= kSmallScreenSize) {
        return smallScreen;
      }
      return largeScreen;
    });
  }
}
