import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/style.dart';
import 'custom_text.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: kDark,
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  ),
                  CustomText(
                    text: "Admin Panel",
                    size: 20,
                    weight: FontWeight.bold,
                    color: kLightGrey,
                  )
                ],
              ),
            ],
          ),
        )),
        Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MediaQuery.of(context).size.width.toString() + "Hallend",
                      style: TextStyle(fontSize: 39)),
                ],
              ),
            )),
      ],
    );
  }
}
