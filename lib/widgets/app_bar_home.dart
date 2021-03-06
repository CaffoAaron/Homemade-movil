import 'package:flutter/material.dart';

import '../theme.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Home',
          style: TextStyle(
              color: titleColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        TextSpan(
            text: 'Made',
            style: TextStyle(
                color: titleColor2, fontSize: 24, fontWeight: FontWeight.bold))
      ]),
    ),
  );
}
