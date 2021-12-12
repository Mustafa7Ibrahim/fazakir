import 'package:flutter/cupertino.dart';

void goTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (BuildContext context) => screen,
    ),
  );
}
