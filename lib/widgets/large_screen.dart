import 'package:flutter/material.dart';

import '../constants/style.dart';

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
