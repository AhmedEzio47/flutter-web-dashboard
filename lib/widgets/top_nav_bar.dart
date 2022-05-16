import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';

import '../constants/sizes.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class TopNavBar extends StatelessWidget with PreferredSizeWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: ResponsiveWidget.screenSize(context) == ScreenSizes.small
          ? IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Colors.blue,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SvgPicture.asset("assets/icons/logo.svg"),
                ),
                CustomText(
                  text: "Admin Panel",
                  size: 18,
                  weight: FontWeight.bold,
                  color: kLightGrey,
                )
              ],
            ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
