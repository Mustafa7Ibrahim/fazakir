import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

void goTo(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (BuildContext context) => screen,
    ),
  );
}
